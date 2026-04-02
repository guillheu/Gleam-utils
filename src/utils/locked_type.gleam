pub type Unlocked(content) {
  Unlocked(content: content)
}

pub opaque type Locked(content) {
  Locked(content: content)
}

pub fn new_unlocked(from: any) -> Unlocked(any) {
  Unlocked(from)
}

pub fn new_locked(from: any) -> Locked(any) {
  Locked(from)
}

pub fn unlock(from: Locked(any)) -> Unlocked(any) {
  Unlocked(from.content)
}

pub fn lock(from: Unlocked(any)) -> Locked(any) {
  Locked(from.content)
}

pub fn get_locked_content(from: Locked(any)) -> any {
  from.content
}

pub fn update_content(from: Unlocked(any), with: any) -> Unlocked(any) {
  Unlocked(with)
}
