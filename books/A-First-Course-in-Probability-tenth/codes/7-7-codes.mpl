# 7.7节：矩母函数
# Example
# 从Maple参考文档中拷贝来的案例代码
with(Statistics):
# Compute the moment generating function of the beta
# distribution with parameters p and q.
MomentGeneratingFunction('Beta'(p, q), t);
# Use numeric parameters.
MomentGeneratingFunction('Beta'(3, 5), 1/2);
MomentGeneratingFunction('Beta'(3, 5), 1/2, numeric);
# Define new distribution.
T := Distribution(PDF = (t-> piecewise(t < 0, 0, t < 1, 6*t*(1-t), 0))):
X := RandomVariable(T):
MGF(X, u);