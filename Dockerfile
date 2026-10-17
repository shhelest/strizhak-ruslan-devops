FROM ubuntu:24.04

LABEL maintainer="Ruslan Strizhak"
LABEL student_id="37187"
LABEL course="DevOps"

WORKDIR /app

COPY Strizhak_Ruslan_info.txt .
COPY config/ ./config/
COPY scripts/ ./scripts/

RUN chmod +x ./scripts/Strizhak_Ruslan_system.sh

CMD ["./scripts/Strizhak_Ruslan_system.sh"]
