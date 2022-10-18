def safeget(obj, *nest_keys):
    for key in nest_keys:
        try:
            obj = obj[key]
        except KeyError:
            return None
    return obj

#Testing valid cases
print(safeget({"a": {"b": {"c": "d"}}}, 'a', 'b', 'c'))
print(safeget({"x": {"y": {"z": "a"}}}, 'x', 'y', 'z'))

#Testing invalid cases
print(safeget({"a": {"b": {"c": "d"}}}, 'a', 'b', 'L'))
print(safeget({"x": {"y": {"z": "a"}}}, 'x', 'y', 'P'))