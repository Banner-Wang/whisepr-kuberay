FROM rayproject/ray-ml:2.9.0

COPY . /home/ray

RUN pip install \
    python-multipart==0.0.9 \
    faster-whisper==1.0.3 \
    typer==0.12.3 \
    typing_extensions==4.12.2 \
    fastapi==0.111.0 \
    fastapi-cli==0.0.4

ENV MODEL_NAME=base
ENV MODEL_DEVICE=cpu
ENV MODEL_CPU_THREADS=4

WORKDIR /home/ray
