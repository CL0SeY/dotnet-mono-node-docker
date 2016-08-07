FROM cl0sey/dotnet-mono-docker:dotnet-jessie-base

RUN apt-get -y clean \
	&& apt-get -y purge \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& curl -sL https://deb.nodesource.com/setup_4.x | bash - \
	&& apt-get install -y nodejs git \
	&& npm install -g bower \
	&& rm -rf /var/lib/apt/lists/*
