echo "start"

echo "\n 0. Inference"
python Speech-Denoiser/main/tools/align_audio_level.py --inDir wavs/test

echo "\n 1. create input.scp"
sh Speech-Denoiser/main/gen_scp.sh wavs/test wavs/input.scp

echo "\n 2. denoise test dataset"
python Speech-Denoiser/main/nnet/separate_new.py Speech-Denoiser/models --input wavs/input.scp --gpu 0 --fs 16000 --dump-dir wavs/result
cp wavs/result/spk2/test_aligned.wav Speaker-Diarization/wavs

echo "\n 3. input clean test.wav to speaker diarization system"
cd Speaker-Diarization
python speakerDiarization.py

echo "\n end"

