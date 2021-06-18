for ds in Adiac Beef CricketX
  do
  conda activate test
  python3 main.py --gpus=0 --dataset $ds --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --jitter --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --scaling --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  python3 main.py --gpus=0 --dataset $ds --timewarp --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  python3 main.py --gpus=0 --dataset $ds --windowwarp --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --windowslice --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --rotation --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --permutation --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
  #python3 main.py --gpus=0 --dataset $ds --magwarp --preset_files --ucr2018 --normalize_input --train --save --augmentation_ratio=4 --model=vgg
done
