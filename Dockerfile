FROM sonarsource/sonar-scanner-cli

ENV FLUTTER_VERSION=v1.12.13+hotfix.8
ENV PATH=${PATH}:/flutter/flutter/bin
WORKDIR /flutter
USER root


ADD https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz /tmp

RUN tar xf /tmp/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz

# Using git
# RUN ls -la && git clone https://github.com/flutter/flutter.git -b stable

RUN flutter doctor


WORKDIR /usr/src

USER scanner-cli


