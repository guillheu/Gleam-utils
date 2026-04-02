pub opaque type LockedType(kind, content) {
  LockedType(content: content)
}

pub type Unlocked

pub type Locked

pub fn new_unlocked(from: any) -> LockedType(Unlocked, any) {
  LockedType(from)
}

pub fn new_locked(from: any) -> LockedType(Locked, any) {
  LockedType(from)
}

pub fn unlock(from: LockedType(Locked, any)) -> LockedType(Unlocked, any) {
  LockedType(from.content)
}

pub fn lock(from: LockedType(Unlocked, any)) -> LockedType(Locked, any) {
  LockedType(from.content)
}

pub fn get_content(from: LockedType(kind, any)) -> any {
  from.content
}

pub fn update_content(
  _from: LockedType(Unlocked, any),
  with: any,
) -> LockedType(Unlocked, any) {
  new_unlocked(with)
}
