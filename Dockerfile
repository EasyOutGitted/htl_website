FROM node:lts-alpine as builder

# make the 'app' folder the current working directory
WORKDIR '/app'

# copy both 'package.json' and 'package-lock.json' (if available)
COPY ./package.json ./

# display version for debugging reasons
RUN node --version && npm --version

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build

# the next container will be our real output-container
FROM nginx:stable-alpine
# copy build-output to new container
COPY --from=builder /app/dist /usr/share/nginx/html
# expose port 80 (standard for nginx)
EXPOSE 80
