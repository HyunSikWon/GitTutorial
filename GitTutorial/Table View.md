## Table View

App Development with Swift 교재 [Lesson 4.5 - Table View] 번역, 요약 정리 by [(HyunSikWon)](https://github.com/HyunSikWon)

---

### Vocabulary
**accessory view**

table view cell은 추가적인 정보를 표현하기 위한 accessory view를 갖는다. ex) .checkmark .detailIndicator

**index path**

cell의 section과 row를 구분하기 위해 사용된다. [section, row] 형태로 표현. 0부터 시작(Zero-based)

**dequeue**

table view는 특별한 caching system을 사용하는데  이는 이미 화면에 표현된 cell을 재사용한다.

재사용 cell을 고르고 준비하는 과정을 'dequeuing'이라고 부른다.

**readability margin**

Auto Layout을 이용해서 device에 따라 view의 readability margin을 조정할 수 있다.

**reorder controll**

reorder controll은 사용자가 table view의 cell을 움직이는 것을 허용한다.

### Table View Controllers
table view의 사용 방식에 따라 project에서 table view를 사용하기 위한 2가지 방식이 있다.

첫번째 방식은, view controller의 view에 직접 table view instance를 삽입하는 것이다.

이 방식 속에서 view controller는 table view 의외에 다른 view들을 관리한다.

따라서, table view의 **위치와 크기**를 관리해야 한다, 또한 data source와 delegate object를 세팅해야 한다.

두번째 방식은, table view controller을 사용하는 것이다.

UITableViewController은 view controller의 subclass로 단일 table view instance를 관리한다.

table view가 전체 view를 차지하기 때문에 사이즈를 조정할 필요가 없다.

table view controller는 table view의 delegate와 data source의 역할도 한다.


### Table View Style
1. Plain(default)
- row가 labeled section으로 나뉠 수 있다. 각 section은 공간 간격을 두지 않고 바로 따라 온다.
2. Grouped
- row가  공간 간격을 두고 그룹 혹은 section으로 나뉘어 진다. 


## Table View Cells

Table view의 모든 row는 table view cell로 표현된다. - UITableViewCell instance

Cell은 reusable views이고 text, image 등 모든 UIView를 표현할 수 있다.

각 Cell은 optional accessory view를 갖는다.

UITableViewCell은 세가지 properties를 갖는다.

1. textLabel, title을 위한 UILabel
2. detailTextLabel, subtitle을 위한 UILabel
3. imageView, image를 위한 UIImageView

UIKit framework는 네가지 표준 cell style을 정의하고 Interface Builder 혹은 enum UITableViewCell.CellStyle을 사용할 수 있다.

table이 default mode(view-only)일 때 cell은 accessory view를 표현할 수 있다. 

이 역시 Interface Builder 혹은 enum UITableViewCell.AccessoryType을 이용해 사용할 수 있다.








