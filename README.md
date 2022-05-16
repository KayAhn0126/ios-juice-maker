# 🍎 쥬스메이커

## 📖 활동시간:

- 식사시간 이외의 모든 시간.

## 📖 쉬는날:

- 수요일, 토요일, 일요일

## 📖 식사시간:

- 점심:
    - 활동 학습 유무에 따라 있는날 → 활동학습 후 1시간 30분
    - 없는날 → 12시 부터 1시 30분
- 저녁:
    - 18시 부터 19시까지

## 📖 코딩 컨벤션

Swift 코드 스타일 : [스위프트 API 가이드라인](https://www.swift.org/documentation/api-design-guidelines/)커밋 Title 규칙

- feat = 주로 사용자에게 새로운 기능이 추가되는 경우
- fix = 사용자가 사용하는 부분에서 bug가 수정되는 경우
- docs = 문서에 변경 사항이 있는 경우
- style = 세미콜론을 까먹어서 추가하는 것 같이 형식적인 부분을 다루는 경우 (코드의 변화가 생산적인 것이 아닌 경우)
- refactor = production code를 수정하는 경우 (변수의 네이밍을 수정하는 경우)
- test = 테스트 코드를 수정하거나, 추가하는 경우 (코드의 변화가 생산적인 것이 아닌 경우)
- chore = 별로 중요하지 않은 일을 수정하는 경우 (코드의 변화가 생산적인 것이 아닌 경우)

현재 시제를 사용, 이전 행동과 대조하여 변경을 한 동기를 포함하는 것을 권장 문장형으로 끝내지 않기

- commitTitle 과 body 사이는 한 줄 띄워 구분하기
- commitTitle line의 글자수는 50자 이내로 제한하기
- commitTitle line의 마지작에 마침표(.) 사용하지 않기
- commitBody는 72자마다 줄 바꾸기
- commitBody는 어떻게 보다 무엇을,왜 에 맞춰 작성하기

네이밍 규칙

- 기타 코딩 컨벤션
    - 네이밍 가이드 최대한 준수하기!
    - [네이밍 가이드 한글 번역본](https://minsone.github.io/swift-internals/api-design-guidelines/)

---

# 💌 1주차

## 📖 함수 설명

- JuiceMaker 파일 내 makeJuice 함수
    - 매개변수 (JuiceKind)
    - 매개변수로 받은 JuiceKind로 쥬스 종류를 판단해 그에따른  재료 소진을 구현 했습니다.
    - 재료가 부족한 경우에 대비, try-catch문을 사용했습니다.
- FruitStore 파일 내 changeFruitAmount, subtractFruitAmount, addFruitAmount함수
    - 매개변수 (FruitKind, Int)
    - 쥬스메이커 타입 정의 섹션에서 “각 과일의 수량 n개를 변경하는 기능이 있습니다" 와 같은 조건이 있어 해당 과일의 수량을 바꿔주는 메서드를 각각 만들었습니다.
    - changeFruitAmount → 해당 과일의 수량을 지정 수량으로 변경 합니다.
    - subtractFruitAmount → 해당 과일에 현재 수량에서 지정 수량 만큼 빼줍니다.
    - addFruitAmount → 해당 과일에 현재 수량에 지정 수량을 추가 합니다.
    

## 📖 어려웠던점/ 해결한점

### FruitStore 파일 내

- 각 과일 수량을 변경하는 함수 구현이 어려웠습니다.
    - subtractFruitAmount함수에서 if let바인딩으로 구현했었는데 들여쓰기 2번이 초과되는것 같아 gurad let 바인딩으로 해결했습니다.
- 어려웠던 점은 아니지만 stock dictionary 변수를 만들면서 10을 사용하는 대신 상수를 만들어 썼으면 더 좋았을것 같습니다.
- 테스트를 해 보았을때는 문제가 되는 부분은 없었지만, 저희가 에러 처리한 방법이 좋은방법인지 알고 싶습니다.

# 💌 1주차 수정 사항

## 📖 JuiceMaker

- 이전 switch문으로 분류에 따라 실행하던 작업을 레시피만 넘기는 방식으로 수정해 가독성을 높였습니다.

## 📖 FruitStore

- stock 프로퍼티에서 선언과 동시에 넣어주던 리터럴 값 10을 initCount 열거형에 Case로 빼주었습니다.
- subtractFruitAmount 함수의 매개변수를 딕셔너리 값으로 받아와 1개이던지 2개이던지 안전하게 처리해주는 방법으로 수정했습니다.

## 📖 EnumCollection

- initCount 열거형을 선언과 동시에 구현 함으로써 의미있는 숫자들을 한곳으로 묶어주었습니다.
- 이전에 JuiceKind에 있었던 case들을 활용, 연관값에 해당 쥬스의 레시피를 넣어주었습니다.
- 말씀해 주신 InputError라는 열거형 명칭은 저희가 다시 생각해 보아도 원래 의미하고자 했던바와 많이 달라,
ErrorCategory라는 이름으로 수정 했습니다.

# 💌  1주차 타임라인

4월 25일 ~ 4월 29일

- 월: 요구사항 확인 및 구현 시작
- 화: 구현 수정 및 PR
- 수: 휴식
- 목: 각자 야곰닷넷 왕초보 iOS앱개발 강의 학습 및 클론 코딩
- 금: 각자 야곰닷넷 왕초보 iOS앱개발 강의 학습 및 클론 코딩

## 📖 STEP 1 학습 키워드

- Enumerations
- Class and Struct
- Error Handling
- Access Control
- Encapsulation
- Tuple and Dictionary

## 📖 Pros and Cons

- Pros
    - 프로젝트에 돌입하기전 충분한 시간을 가지고 읽고 브레인스토밍
    - 쉬는시간 가지기 반복으로 스트레스 최소화 및 번아웃 방지
    - 요구사항 대로 만들고 더 이상의 불 필요한 기능 추가 X
    - 서로 한발씩 양보하는 모습
- Cons
    - README에 시간을 많이 투자 못했지만 다음주엔 조금 더!
    - 네이밍

---

# 💌 2주차

## 📖 MakerViewController

📖 extension Notification.Name

- post하는 이름을 상수화해서 사용하기 편하게 만들어 주었습니다.

📖 viewDidLoad()

- 각 과일의 레이블에 현재 과일 수량을 가져와 대입 해줍니다.
- 위의 Notification.Name.identifier가 post를 하면 #selector에있는 takeJuiceOrder함수를 실행하도록 옵져버를 추가 해주었습니다.

📖 takeJuiceOrder()

- 사용자로 부터 입력된 쥬스를 만드는 함수 입니다.
    - 성공과 실패 여부를 Alert창을 띄워 알려줍니다.

📖 bringFruitCount()

- 각 과일의 갯수를 가져와 해당 레이블에 대입 해줍니다.

📖 successAlert()

- 필요한 재고가 있는 경우 띄워지는 Alert창 입니다.
- 쥬스의 이름을 매개변수로 받아와 성공하였을때 설정된 문구를 출력 하도록 구현했습니다.
    - OK 버튼을 누르는 시점에 과일 갯수를 재 설정 해줍니다.

📖 failAlert()

- 재고가 모자란 경우 띄워지는 Alert창 입니다.
- ‘예’ 와 ‘아니오' 두개의 옵션을 제시하고 그 중,
    - ‘예'를 선택
        - 네비게이션으로 화면전환
    - ‘아니오'를 선택
        - 띄워져있는 Alert창을 종료

📖 orderProcess()

- UIButton을 매개변수로 받아와 클릭된 버튼의 쥬스 이름을 가져옵니다.
- 노티피케이션 객체에 전달할 정보를 담아서 발송 해주는 함수입니다.

## 📖 ViewController

📖 bringStockFruitCount()

- 재고수정 화면의 레이블을 최신화 하는 함수입니다.

touchUpDismissButton()

- 네비게이션이나 모달로 화면전환이 되었을때 이전화면으로 돌아가는 함수입니다.

touchUpCompleteButton()

- 완료버튼은 기능구현 사항에는 없었지만 나중에 필요할 것으로 생각되어 넣었습니다.
    - 현재는 Alert만 띄워지도록 구현했습니다.

## 📖 JuiceMaker

- 추가된 함수
    - fruitCount()
        - 매개변수로 받은 과일의 갯수를 String 타입으로 반환 해주는 함수입니다.

## 📖 FruitStore

- 추가된 함수
    - confirmFruitAmount()
        - 재료가 충분하다면 레시피의 과일 갯수만큼 Stock에서 차감해주는 함수입니다.
- 수정된 함수
    - subtractFruitAmount()
        - 특정한 경우에 예상한대로 결과가 나오지 않아 로직을 수정했습니다. 해당 내용은 밑에 후술 하겠습니다.

## 📖 어려웠던점 / 해결한 점

### 전체

- juiceMaker 객체를 MakerViewController와 ViewController 두 곳에서 사용하려고 고민하다 클래스 밖으로 빼주어 사용하는 방향으로 구현 했습니다.
- subtractFruitAmount 함수에서 두가지의 과일을 소비하는 레시피가 있는데, 두 가지중 하나의 과일의 수량이 부족할 때, 쥬스는 만들어지지 않고, 수량이 부족하지않은 과일의 수량이 소비되는 경우를 발견해 코드를 수정 했습니다.

### 궁금한점

- 재고수정 화면이 보여지는 두 가지 경우가 있는데,
    - 하나는 재고가 모자라 Alert창을 통해 화면전환이 되는 경우, (Navigation)
    - 하나는 재고수정 버튼으로 화면전환이 되는 경우 (Modal)
    - 모달로 넘어갔을때에도 네비게이션 바와 아이템이 보이는데 이유를 잘 모르겠습니다.
- subtractFruitAmount() 함수에서 더 좋은 구현 방법이 있는지 궁금합니다.

# 💌 2주차 TWL

## **📖 타임라인**

5월 2일 ~ 5월 6일

- 월: 요구사항 확인 및 구현 시작
- 화: 구현 수정 및 PR
- 수: 휴식
- 목: 스텝 2 리뷰를 바탕으로 코드 수정
- 금: 각자 야곰닷넷 오토레이아웃 정복하기 시청

## **📖 STEP 2 학습 키워드**

- Notification Center
- Navigation
- Modality
- Alert
- Auto-Layout
- VC간 데이터 주고 받기
- 타입의 캡슐화 은닉화

## **📖 Pros and Cons**

- Pros
1. UI 만들기에 대한 긍정적인 자세 -> 두려워하지 않음
2. Notification을 이용해 구현하려는 열정
- Cons
1. 제대로 알아보지 않고 사용 -> 다음부턴 그러지 말기~
2. 타입 사용에 대해 고민해보기.

---

# 💌 3주차

## 📖 STEP 2에서 받은 리뷰

- Label은 String? 타입이라 String 타입으로 값을 넣어줘야 한다고 생각했습니다. 말씀하신대로 코드에 정답은 없지만 저희가 생각하기엔 String타입이 가장 적합하다고 판단했습니다.
- 코드를 잘 짜는것도 중요하지만 적어도 저희가 작성한 코드에 답변을 할 수 있도록 그런 자세로 임하겠습니다.

## 📖 STEP 3 요구사항

- 네비게이션 아이템 → 오른쪽 닫기  1개
- 화면 진입시 과일의 현재 재고 수량 표시
- -,+ 를 통한 재고 수정
- 오토레이아웃 적용

## 📖 코드 및 구조 설명

### 공통

- 리터럴 값들을 최대한 enum으로 묶어주려 했습니다.

### MakerViewController

- viewDidLoad()에 있었던 bringFruitCount() 함수를 화면이 새로 나타날때 마다 호출 하는 방식으로 수정 했습니다.
- setUpStockValues()에서 네비게이션 방식으로 재고수정 scene을 띄우는 동작 전, ViewController의 프로퍼티 MakerController를 이용하는 방식으로 VC와 VC사이 데이터 전달 통로를 구현했습니다.

### ViewController

- 재고수정 scene title을 코드로 구현했습니다.
- var MakerController: UIViewController? 프로퍼티를 추가해 MakerViewController와 ViewController 사이에 데이터 전송이 가능하게 해주었습니다.
- 재고수정 scene이 새로 띄워질때 마다 각각의 Stepper의 값을 현재 수량과 맞춰주었습니다.
- takeJuiceOrder에서 juiceName에 공백, 개행문자가 들어와도 처리할 수 있도록 구현했습니다.

### JuiceMaker / FruitStore

- 과일 하나의 수량을 수정하는 함수와 과일 전체 수량을 수정하는 함수를 각각 만들어주었습니다.

```swift
func updateAmount(fruitName: FruitKind, fruitAmount: Int) {
    fruitStore.changeFruitAmount(fruitName: fruitName, amount: fruitAmount)
}
    
func updateTotalAmount(editedStock: Dictionary<FruitKind, Int>) {
    fruitStore.changeAllFruitAmount(latestStock: editedStock)
}
```

## 📖 궁금한 점

- MakerViewController 내 orderProcess 함수는 한곳에서 들어오는 값에 따라 처리를 해주었습니다. 반대로 ViewController 내 stepperStrawberryValueChanged와 같이 Stepper의 value를 올려주는 함수는 stepper마다 만들어 주었습니다. 여러개의 버튼을 하나의 IBAction함수에서  처리하는 경우, 각각의 함수를 만들어 처리하는것 중 언제 무엇을 사용해야 좋은지 알고 싶습니다.

# 💌 3주차 배운점

- UIViewController을 상속받은 뷰를 로드할때 여러가지 설정들을 마무리해주는 작업을 viewDidLoad()에서 해준다. 만약 재정의된 viewDidLoad() 메서드에서 super.viewDidLoad()를 가장먼저 호출하면 viewController 설정을 마무리 하고 필요한 다음 수행문장을 실행한다는 이야기이다.

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    xxx()
    yyy()
    zzz()
}
```

- 반대로 재정의된 viewDidLoad() 메서드의 마지막에 super.viewDidLoad()가 있다면 viewController 설정을 어떤 작업들 후에 실행해주겠다는 의미이다.

```swift
override func viewDidLoad() {
    xxx()
    yyy()
    zzz()
    super.viewDidLoad()
}
```

---

- 만약 viewDidLoad안에서 아무것도 안하면 선언 안해줘도 되고

```swift
override func viewDidLoad() {

}
```

- 무언가 수행하는 문장이 있다면 super.viewDidLoad를 선언 해주는것이 좋다.

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    doSomething()
}
```

- 프로퍼티나 메서드 앞에 붙는 self는 부른 객체를 나타내는 것으로 알고있습니다.
- 여기서는 ViewController는 실제 인스턴스는 아니지만 UIViewController의 관점에서 볼 때 인스턴스와 비슷한 개념으로 사용됩니다. 즉 여기서 self 는 부른 객체 즉 해당 viewController를 나타냅니다. self가 없어도 현재 구조에서는 해당 viewController는 하나밖에 없기때문에 누가 불렀는지 알 필요는 없는것 같습니다.

---

# 💌 3주차 TWL

## **📖 타임라인**

5월 9일 ~ 5월 13일

- 월: 요구사항 확인 및 구현 시작
- 화: 구현 수정 및 PR
- 수: 휴식
- 목: 스텝 3 리뷰를 바탕으로 코드 수정 후 커밋
- 금: TWL 작성

## **📖 STEP 2 학습 키워드**

- View의 Title 작성
- Auto-Layout 적용
- Stepper 사용

## **📖 Pros and Cons**

- Pros
1. 오토레이아웃을 먼저 공부해와서 오랜시간 들이지 않고 수월하게 끝냄.
2. 서로 합이 잘 맞아서 아주 단기간에 끝냄.
3. 하나를 하더라도 이유있게 하려고 노력함.
- Cons
1. 다음엔 접근제어자를 사용해보는것
2. 정확한 이유를 머리속 청사진으로 그리기
3. 각자의 머릿속에 아쉬움으로 남는것 다음 프로젝트에 조금 더 녹여내 보기!
