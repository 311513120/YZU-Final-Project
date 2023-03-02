# Project
## Final project in YZU
---
## Abstract
新冠病毒衝擊下，全世界的生活模式都有極大 的改變，人與人的互動由實體改為線上，使線上通 訊軟體需求量暴增。以線上會議為例，會議成員無 法在同一空間內面對面對談，需要分神去關注目前 是誰在說話，增加會議難度與注意力的消耗，後續 的會議紀錄也顯得相對困難，此時，語者自動分段 標記(Speaker Diarization)就能用來解決這項問題。

語者自動分段標記是一項用對應於語者身份的類別來標記音頻或視頻紀錄的任務，簡而言之，是一項識別「誰在何時說話」的任務。本文中，我們使用34層的 ResNet 為主幹架構，接上經常應用於臉部辨識的 GhostVLAD 層，以聚合語者特徵，進行端到端的模型訓練，產生語者的聲紋辨識嵌入碼。之後，採用一種完全受監督的分段標記方法，無界交錯狀態回歸神經網路(UIS-RNN)，對一段指定的音頻做分段標記。

為了減輕聲音環境中的任何干擾，執行音頻分段標記前，會使用語音增強 (Speech Enhancement) 對音頻進行優化，消除與人聲不相關的雜音，增加語者分段標記任務的效率與準確率。

---
## How to use
Download pakages from requirements.txt

    pip install -r requirements.txt

Run main.sh

    ```bash
    ./main.sh
    ```
    
---
## Datasets
### English
 - [VoxCeleb1](http://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox1.html) : contains 1251 speakers.
 - [VoxCeleb2](http://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox2.html)： contains 6112 speakers.

### Chinese

 - [Aishell](http://www.openslr.org/resources/33) : 400 people from different accent areas in China are invited to participate in the recording

## UIS-RNN structure

## Result Visualization