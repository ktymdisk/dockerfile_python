FROM python:3.9.2-buster

RUN apt-get update && apt-get install -y \
	fish \
	git \
	htop \
	neovim \
	tmux \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

ENV POETRY_HOME="/opt/poetry" \
	POETRY_VIRTUALENVS_IN_PROJECT=true \
	PATH="${POETRY_HOME}:$PATH"

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python


CMD ["/bin/bash"]
