# First-time build can take upto 10 mins.

FROM apache/airflow:2.2.3

ENV AIRFLOW_HOME=/opt/airflow

USER root
RUN apt-get update -qq && apt-get install vim -qqq
# git gcc g++ -qqq

COPY requirements.txt .
# COPY mass-shootings-in-united-states-20182022.zip .
# COPY mass-shootings-in-united-states-20182022.zip /opt/airflow
# COPY kaggle.json .
# RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install --no-cache-dir pandas sqlalchemy psycopg2-binary
RUN pip install -r requirements.txt
RUN pip install pandas sqlalchemy psycopg2-binary
# RUN pip install --no-cache-dir kaggle
# RUN pip install -q kaggle
# RUN mkdir -p ~/.kaggle
# RUN cp kaggle.json ~/.kaggle/
# RUN chmod 600 /root/.kaggle/kaggle.json
# RUN kaggle datasets download -d perkymaster/school-donations
# RUN mkdir school-donations && mv 'school-donations.zip' '/school-donations/school-donations.zip'
# RUN unzip /school-donations/school-donations.zip


# Ref: https://airflow.apache.org/docs/docker-stack/recipes.html

SHELL ["/bin/bash", "-o", "pipefail", "-e", "-u", "-x", "-c"]

ARG CLOUD_SDK_VERSION=322.0.0
ENV GCLOUD_HOME=/home/google-cloud-sdk

ENV PATH="${GCLOUD_HOME}/bin/:${PATH}"

RUN DOWNLOAD_URL="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz" \
    && TMP_DIR="$(mktemp -d)" \
    && curl -fL "${DOWNLOAD_URL}" --output "${TMP_DIR}/google-cloud-sdk.tar.gz" \
    && mkdir -p "${GCLOUD_HOME}" \
    && tar xzf "${TMP_DIR}/google-cloud-sdk.tar.gz" -C "${GCLOUD_HOME}" --strip-components=1 \
    && "${GCLOUD_HOME}/install.sh" \
       --bash-completion=false \
       --path-update=false \
       --usage-reporting=false \
       --quiet \
    && rm -rf "${TMP_DIR}" \
    && gcloud --version

WORKDIR $AIRFLOW_HOME

USER $AIRFLOW_UID
