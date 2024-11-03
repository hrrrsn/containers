FROM debian:bookworm@sha256:e11072c1614c08bf88b543fcfe09d75a0426d90896408e926454e88078274fcb

RUN echo "deb http://deb.debian.org/debian stable main contrib non-free" | tee -a /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y nano wget curl bash \
                        intel-media-va-driver-non-free \
                        libva-drm2 intel-opencl-icd  \
                        libva2 mesa-va-drivers libmfx1 libvpl2 \
                        vainfo gpg-agent && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*