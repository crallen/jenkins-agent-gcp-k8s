FROM jenkins/jnlp-slave

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
ENV PATH /opt/google-cloud-sdk/bin:$PATH

USER root

RUN apt-get update -y && apt-get install -y jq git
RUN curl https://sdk.cloud.google.com | bash && mv /root/google-cloud-sdk /opt
RUN gcloud components install kubectl
