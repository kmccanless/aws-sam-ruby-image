FROM linuxbrew/brew
LABEL maintainer="Keith McCanless"
RUN sudo apt-get update && sudo apt-get install -y \
     ruby
RUN gem install bundler
RUN brew tap aws/tap && brew install aws-sam-cli
ENV SAM_CLI_TELEMETRY 0
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

