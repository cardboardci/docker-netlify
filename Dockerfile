FROM node:11-alpine
RUN npm i -g netlify-cli@2.6.4

##
## Image Metadata
##
ARG build_date
ARG version
ARG vcs_ref
LABEL maintainer = "CardboardCI" \
    \
    org.label-schema.schema-version = "1.0" \
    \
    org.label-schema.name = "netlify" \
    org.label-schema.version = "${version}" \
    org.label-schema.build-date = "${build_date}" \
    org.label-schema.release= = "CardboardCI version:${version} build-date:${build_date}" \
    org.label-schema.vendor = "cardboardci" \
    org.label-schema.architecture = "amd64" \
    \
    org.label-schema.summary = "Netlify CLI" \
    org.label-schema.description = "Netlify builds, deploys and hosts your netlify services" \
    \
    org.label-schema.url = "https://gitlab.com/cardboardci/images/netlify" \
    org.label-schema.changelog-url = "https://gitlab.com/cardboardci/images/netlify/releases" \
    org.label-schema.authoritative-source-url = "https://cloud.docker.com/u/cardboardci/repository/docker/cardboardci/netlify" \
    org.label-schema.distribution-scope = "public" \
    org.label-schema.vcs-type = "git" \
    org.label-schema.vcs-url = "https://gitlab.com/cardboardci/images/netlify" \
    org.label-schema.vcs-ref = "${vcs_ref}" \