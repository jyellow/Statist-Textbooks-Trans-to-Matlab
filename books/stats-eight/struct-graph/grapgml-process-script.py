import networkx as nx
import pandas as pd

# 1. 读取 GraphML 文件
graphml_file_path = '/Users/johannyellow/Documents/MATLAB/Statist-Textbooks-Trans-to-Matlab/books/stats-eight/struct-graph/chapter03/chapter-03-index.graphml'
G = nx.read_graphml(graphml_file_path)

# 2. 提取节点数据
node_data = []
for node_id, data in G.nodes(data=True):
    # 初始化row对象
    row = {'id': node_id}
    
    # 提取节点ID和需要的属性
    # 需要提前判断data对象中是否存在「matlab_doc_links」、「label」字段
    if 'matlab_doc_links' in data:
        # 判断matlab_doc_links非空
        # 将matlab_doc_links对象添加到row字段对象中
        doc_link = data['matlab_doc_links']
        # 将字符串中的\n内容转化为显示的字符串内容，不将其转意为真是的换行
        # doc_link = repr(doc_link)
        replacement = ", "
        doc_link = doc_link.replace('\n', replacement)
        row['matlab_doc_links'] = doc_link
    
    if 'label' in data:
        # 判断node_label对象是否非空
        # 将node_label对象添加到row字段对象中
        row['label'] = data['label']
    
    node_data.append(row)

# 3. 提取边数据
edge_data = []
for source, target, data in G.edges(data=True):
    # 提取源节点、目标节点和所有边属性
    row = {'source': source, 'target': target}
    row.update(data)
    edge_data.append(row)

# 4. 转换为 DataFrame 并写入 CSV
df_nodes = pd.DataFrame(node_data)
df_edges = pd.DataFrame(edge_data)

# 写入 CSV 文件
df_nodes.to_csv('nodes.csv', index=False, encoding='utf-8')
df_edges.to_csv('edges.csv', index=False, encoding='utf-8')

# 之后就可以将这两个 CSV 文件导入到 Excel 中