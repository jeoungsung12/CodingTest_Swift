def solution(S):
    stack = []
    for s in S:
        if s == "(":
            stack.append(s)
        elif s == ")":
            if not stack or stack.pop() != "(":
                return False
    return not stack