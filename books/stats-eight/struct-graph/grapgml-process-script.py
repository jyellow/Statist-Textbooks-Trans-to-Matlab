import networkx as nx
import pandas as pd

# 1. 读取 GraphML 文件
graphml_file_path = '/path/to/graphml_file/chapter-03-index.graphml'
G = nx.read_graphml(graphml_file_path)

# 2. 提取节点数据
node_data = []
for node_id, data in G.nodes(data=True):
    # 提取节点ID和所有属性
    row = {'id': node_id}
    row.update(data)
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