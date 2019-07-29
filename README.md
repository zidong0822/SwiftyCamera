# SwiftyCamera
Swift通过AVFoundation实现自定义相机
##1.定义cameraController
```
 func configCameraController(){
        cameraController.prepare { (error) in
            if let error = error{
                print(error)
            }
            try? self.cameraController.displayPreview(on:self.capturePreviewView)
        }
    }
```
##2.闪光灯切换
```
cameraController.toggleFlash()
```
##3.摄像头切换
```
  try? cameraController.switchCameras()
```
##4.拍照
```
 cameraController.captureImage { (image, error) in
            if let image = image{
                print("captureImage",image)
            }
        }
```