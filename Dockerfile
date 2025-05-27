FROM node:latest

# Set working directory
WORKDIR /usr/src/app

# ARG for GitHub token
ARG GITHUB_TOKEN
ARG REPO_URL

# Clone the private repo
RUN apt-get update && \
    apt-get install -y git openssl && \
    git clone https://$GITHUB_TOKEN@$REPO_URL . && \
    npm install && \
    npx prisma generate && \
    npm run build

# Expose NestJS port
EXPOSE 3000

# Run the app
CMD ["node", "dist/main"]