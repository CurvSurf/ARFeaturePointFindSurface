# FindSurface-GUIDemo-iOS-FeaturePoint (Swift)

**Curv*Surf* FindSurface™** GUIDemo using ARKit raw feature points for iOS (Swift)

## Overview

This demo app showcases a real-time application of FindSurface to detect geometric shapes in point clouds provided by ARKit.

The project retrieves `rawFeaturePoints` from the surrounding environment via ARKit’s `ARFrame`, then uses FindSurface to detect geometry and overlays the results in AR rendering.

> How is this project different from [the previous project?](https://github.com/CurvSurf/FindSurface-GUIDemo-iOS/tree/main)  
> The previous project required a LiDAR-equipped device, whereas this one supports general iOS devices (iPhone, iPad) that support ARKit but do not have LiDAR sensors.

This demo runs on iPhone or iPad devices with iOS/iPadOS 18.6 or later.

## Features

- Real-time detection of geometric surfaces in camera scenes;  
- Uses input raw feature points provided by ARKit;  
- Detected surfaces rendered as overlays (AR rendering);  
- A UI designed for simple and intuitive detection

## User Interface

![guide.png](images/guide.png)

1. When the app starts, a screen requesting you to scan your surroundings appears (as shown above).  
   This is a pre-stabilization step to ensure smooth AR experience by allowing the device’s motion tracking to stabilize.  
   Move your device smoothly as if scanning the surroundings with the camera. Once the progress bar at the bottom of the popup fills completely, the stabilization phase is complete.

![advice.png](images/advice.png)

2. During the stabilization phase, the progress may not advance and the guidance window will remain if:  
   - The device is stationary and the camera keeps seeing the same image;  
   - The camera is pointed at walls or surfaces lacking color, texture, or detail, or showing highly repetitive patterns;  
     (e.g., a plain solid-colored wall, a glass window, or a mirror filling the entire view)  
   - The camera points into empty space beyond ~10m;  
     (e.g., pointing at the sky outdoors)  

   *Because ARKit’s `rawFeaturePoints` are only detected within about 10m, outdoor use of this app may be somewhat limited.*

![main-ui.png](images/main-ui.png)

3. After stabilization, the main screen appears (as shown above):  

   - **①**: Displays the number of points currently visible on the screen.  
   - **②**: Lets you select the type of geometry to detect. Plane, circle, and cylinder are supported.  
   - **③**: The green dotted circle represents the approximate size of the geometry to detect. You can adjust its size with a pinch gesture. Generally, setting it slightly larger than half the size of the actual object is recommended. (Note: precision is not critical here.) A tutorial window in the top-right corner explains these details; you can dismiss it if no longer needed. Checking *“Don’t show again”* ensures the popup will not appear even after restarting the app.  
   - **④**: To detect geometry, ensure that some of the nearby points fall inside the purple dashed circle. The size of this circle cannot be adjusted.  
   - **⑤**: From top to bottom, the following controls are available:  
     - **Point collecting toggle button**: Enables/disables point collection from the environment. Default is enabled at app launch (stop button visible). Holding for about 5 seconds clears the point buffer collected so far.  
     - **FindSurface toggle button**: Runs FindSurface detection on every frame and shows a preview of the detected geometry at the current pointing location. Default is enabled at app launch (disabled state shown with grayscale icon).  
     - **Capture button**: Captures the currently previewed geometry and places it as a fixed AR overlay in space.  
     - **Undo button**: Removes the most recently captured geometry. Holding for about 1–2 seconds removes all captured geometry.  

*Note: Unlike the image shown above, in runtime the background will display the live scene from the device’s camera instead of a white background.*  

<!--
# FindSurface-GUIDemo-iOS-FeaturePoint (Swift)

**Curv*Surf* FindSurface™** GUIDemo using ARKit raw feature points for iOS (Swift)


## Overview

This demo app demonstrates a real-time application using FindSurface to search point clouds, which ARKit provides, for geometry shapes.

이 프로젝트는 ARKit의 ARFrame으로부터 주변 환경의 rawFeaturePoints를 얻어내고 FindSurface를 이용해서 geometry를 검출하고 AR 렌더링으로 화면에 보여줍니다.

> [이전의 프로젝트](https://github.com/CurvSurf/FindSurface-GUIDemo-iOS/tree/main)와 무엇이 다른가요?
> 이전의 프로젝트는 LiDAR 탑재된 장비를 요구하는 반면, 이 프로젝트는 LiDAR가 탑재되지 않은, ARKit를 지원하는 일반적인 iOS 장치(iPhone, iPad)를 지원합니다.

이 데모는 iOS 또는 iPadOS 18.6 이상을 지원하는 iPhone 또는 iOS 기기에서 동작합니다.


## Features

- Real-time detection of geometry surfaces in camera scenes;
- Using input raw feature points provided by ARKit;
- Detected surfaces rendered in overlay (AR rendering);
- 최소한의 사용자 조작으로 간편하게 결과를 얻어낼 수 있게 설계된 간결한 UI 구성


## User Interface

1. 앱을 시작하면, 위의 이미지와 같이 주변 스캔을 요구하는 창이 나타납니다. 이는 원활한 AR 경험을 위해, 장치의 모션 트래킹을 안정화시키기 위한 사전 작업입니다. 장치를 들고 주변을 둘러보듯 카메라를 부드럽게 이동시키세요. 표시된 팝업창 하단의 progress bar가 완전히 차오르면 안정화 단계를 통과합니다.

2. 안정화 단계에서 다음과 같은 경우에 안정화 진행률이 오르지 않고 위와 같은 안내창이 뜹니다:

- 장치의 움직임이 멈춰서 카메라에 들어오는 이미지가 동일한 채로 유지되는 경우;
- 카메라가 색상이나 무늬/질감 또는 디테일이 없거나 동일한 패턴이 매우 규칙적으로 반복되는 벽을 보고있는 경우;
  (예: 화면을 가득 채우는 무늬없는 단색 벽, 유리창, 거울)
- 카메라가 약 10m 밖까지 아무것도 없는 허공을 가리키는 경우
  (예: 야외의 하늘)
*ARKit에서 rawFeaturePoints가 약 10m 이내로만 검출되는 한계로 인해, 이 앱은 야외에서 사용이 다소 제한적입니다.*


3. 안정화 단계를 끝마치면, 위와 같은 화면이 뜹니다.

- ①: 화면상에 나타나는 녹색 점의 개수를 표시합니다.
- ②: 검출할 geometry 유형을 결정합니다. 평면, 원, 원기둥이 지원됩니다.
- ③: 녹색 점선(dotted line)으로 그려진 원은 검출할 geometry의 대략적인 크기를 나타냅니다. 화면에 pinch 제스쳐를 이용해 크기를 조절할 수 있으며, 일반적으로 검출할 물체 크기의 절반보다 약간 큰 정도를 권장합니다. (참고: 아주 구체적으로 정확할 필요는 없습니다.) 우측 상단의 안내 창에서 이러한 내용을 소개하고 있으며, 더 이상 필요하지 않으면 dismiss를 눌러 앱이 실행중인 동안 창을 보이지 않게 할 수 있습니다. "Don't show again"에 체크하고 dismiss하면 앱을 재시작해도 더 이상 나타나지 않게 됩니다.
- ④: 사용자는 geometry 검출을 위해 목표지점 근처의 녹색 점들 일부가 이 보라색 파선(dashed) 원 안에 들어오게 해야 합니다. 이 원 안에 들어오는 점들 중 적절한 점이 자동으로 선택됩니다. 이 원의 크기는 조절할 수 없습니다.
- ⑤: 위에서부터 다음과 같은 기능을 제공합니다:
  - Point collecting 토글 버튼: 주변 환경으로부터 점 수집을 활성화/비활성화 합니다. 앱 시작시 기본값은 활성화(정지 버튼이 보임)로 되어있습니다. 약 5초간 길게 누르고 있면 이제까지 수집된 점 버퍼를 비웁니다.
  - Preview 토글 버튼: FindSurface로 매 프레임마다 검출을 실시하여 현재 가리키고 있는 지점으로부터 검출되는 geometry의 preview를 보여줍니다. 앱 시작시 기본값은 활성화(비활성화시 아이콘이 흑백으로 바뀜)
  - Capture button: 현재 preview에 나타나고 있는 geometry를 캡쳐하여 공간에 고정된 overlay로 표시합니다.
  - Undo button: 가장 최근에 검출한 captured geometry를 제거합니다. 약 1-2초간 길게 누르면 모든 geometry를 제거합니다.

*위의 이미지와 달리, 실제 런타임에서는 흰 배경 대신에 사용자의 장치 카메라가 바라보는 장면이 나타납니다.*

-->