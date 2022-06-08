FROM python:3.8
        EXPOSE 8501
        WORKDIR /pos.py
        COPY requirements.txt ./requirements.txt
        RUN pip3 install -r requirements.txt
        ADD model-best ./spacymodel/
        COPY . .
        CMD streamlit run pos.py
        