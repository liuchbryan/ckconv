# for dropout in 0.1 0.2 0.3 0.4; do
#     for omega in 1 25 50; do
#         CUDA_AVAILABLE_DEVICES=1,2 python run_experiment.py --config.batch_size=64 --config.clip=0 --config.dataset=MNIST --config.device=cuda --config.dropout=$dropout --config.dropout_in=$dropout --config.epochs=200 --config.kernelnet_activation_function=Sine --config.kernelnet_no_hidden=32 --config.kernelnet_norm_type=LayerNorm --config.kernelnet_omega_0=$omega --config.lr=0.001 --config.model=CKCNN --config.no_blocks=2 --config.no_hidden=30 --config.optimizer=Adam --config.permuted=True --config.sched_decay_factor=5 --config.sched_decay_steps=\(75,\) --config.sched_patience=20 --config.scheduler=plateau

#     done
# done

for dropout in 0.3 0.4; do
    for omega in 5 15 20 30 40; do
        CUDA_AVAILABLE_DEVICES=1 python run_experiment.py --config.batch_size=64 --config.clip=0 --config.dataset=MNIST --config.device=cuda --config.dropout=$dropout --config.dropout_in=$dropout --config.epochs=200 --config.kernelnet_activation_function=Sine --config.kernelnet_no_hidden=32 --config.kernelnet_norm_type=LayerNorm --config.kernelnet_omega_0=$omega --config.lr=0.001 --config.model=CKCNN --config.no_blocks=2 --config.no_hidden=30 --config.optimizer=Adam --config.permuted=True --config.sched_decay_factor=5 --config.sched_decay_steps=\(75,\) --config.sched_patience=20 --config.scheduler=plateau

    done
done

