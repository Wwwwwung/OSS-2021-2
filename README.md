# 글꼴 분석을 통한 DB구축과 글꼴 추천 시스템

디지털 시대에 미디어 콘텐츠의 중요성이 대두되며 콘텐츠의 경쟁력을 높여줄 글꼴의 영향력 또한 높아지고 있다. 하지만 글꼴은 저작권 보호를 받는 저작물로 글꼴 저작권을 침해한 자는 저작권법 제136조 제1항에 따라 5년 이하의 징역 또는 5000만 원 이하의 벌금에 처할 수 있다. 한국저작권위원회에 따르면 2019년 글꼴 파일 저작권 상담이 3,886건으로 글꼴과 관련하여 상당히 많은 분쟁이 일어나는 것을 알 수 있다. 

> >"본인은 폰트 한두 개만 사용했는데 저작권자는 패키지 전체를 다 사야만 합의해 준다는 조건으로 합의를 종용하는 경우도 적지 않다. 적게는 수십만원, 많게는 수백만원까지 요구하는 것으로 안다."

하지만 글꼴은 종류도 다양하고 개인부터 기업까지 제작 업체도 달라서 저작권에 대한 전문지식이 없는 경우 어떤 것이 저작권 침해에 해당하는지조차 알기 어려운 실정이다. 글꼴의 정보가 정확하게 알려지지 않아 일반 사용자는 글꼴의 저작권 관련 내용을 차는 것도 어렵다. 또한 사용자가 마음에 드는 글꼴을 찾았다 할지라도 사용자의 의도에 따라 사용할 수 없으면 다시 글꼴을 찾는 힘들 들여야 하며 비슷한 글꼴을 다시 찾는 일도 쉽지 않다.

* * *
따라서 이런 문제를 해결하기 위해 한글 글꼴을 분석하여 데이터베이스를 구축하고, 사용자가 사용할 글꼴 파일을 입력하면 사용 범위와 가격 등 글꼴 정보를 볼 수 있도록 한다. 또한 사용자가 등록한 글꼴 파일과 비슷한 글꼴을 추천하여 일반 사용자가 글꼴에 쉽게 접근할 수 있도록 하는 시스템을 제안한다.

## DB 구축하기

글꼴 분석을 위해서는 글꼴의 데이터베이스를 구축하는 일이 선행 되어야 한다. 글꼴의 DB를 구축할 때에는 글꼴을 분류, 검색을 위해 특징 추출을 해야한다.
해당 글꼴로 만들 수 있는 모든 글자에서 특징을 추출하면 정확도가 높은 DB를 만들 수 있지만 위치에 따라 글꼴 모양이 달라지지 않는 영어나 숫자와 다르게, 한글 글꼴은 2,350자를 분석해야 모든 정보를 알 수 있다. 따라서 다음 기준에 따라 대표 글꼴을 선정하여 글꼴 분석에 할애하는 시간을 단축한다.

> 1. 대부분의 한글 요소를 포함한다.
> 1. 형태 변별 요소가 많은 글자를 대표 글꼴로 선정한다.
> 1. 단순한 자소 모음을 가지는 글자를 기본으로 선정하여 파생한다.

각 글꼴에서 대표 글꼴 영상을 렌더링하여 특징을 추출하면 노이즈나 왜곡이 발생하지 않아 특징 추출에 용의하다. 렌더링 한 영상에서 특징을 추출하는 기술로는 **HOG(Histogram of Oriented Gradients)** 를 사용한다. HOG는 대상 영역을 일정 크기의 셀로 분할하고 셀마다 edge 픽셀들의 방향에 대한 히스토그램을 구하고 이들 값을 일렬로 연결한 벡터값으로, edge의 방향 히스토그램이라 할 수 있다. 이 기술을 사용해 고유한 윤곽선 정보를 갖는 글꼴의 특징을 추출할 수 있다.

특징을 추출한 파일을 글꼴 DB에 저장할 때 파일 이름, 글꼴 이름을 저장하고 해당 글꼴의 저작권 관련 사항과 같은 정보를 함께 출력할 수 있도록 글꼴 정보도 함께 저장한다.

* * *
이 과정을 순서도로 나타내면 다음과 같다.

<img src="https://user-images.githubusercontent.com/90589294/139540188-d745bb53-42be-4ad6-a94d-6303ae10bb2c.jpg" width="40%" height="50%"></img>

## 군집화

## 사용자 글꼴 검색

