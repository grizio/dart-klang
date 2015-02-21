library klang.utilities.list;

bool isEmpty(Iterable list) {
  return list == null || list.isEmpty;
}

bool isNotEmpty(Iterable list) {
  return !isEmpty(list);
}