FROM public.ecr.aws/lambda/python:3.9

COPY requirements.txt ${LAMBDA_TASK_ROOT}

RUN python3 -m ensurepip
RUN pip install -r requirements.txt

ADD src ${LAMBDA_TASK_ROOT}

CMD ["main.handler"]
