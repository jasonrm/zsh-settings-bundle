# Until kubectl supports something sane like KUBECTL_CONTEXT and KUBECTL_NAMESPACE,
# https://github.com/kubernetes/kubernetes/issues/27308#issuecomment-309207951
alias k='kubectl "--context=${KUBECTL_CONTEXT:-$(kubectl config current-context)}" ${KUBECTL_NAMESPACE/[[:alnum:]-]*/--namespace=${KUBECTL_NAMESPACE}}'
