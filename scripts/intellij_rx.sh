#!/usr/bin/env bash

#source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
#pushd ~/workspace/pivotal_ide_prefs/cli
#./bin/ide_prefs install --ide=intellij
#popd

#<PRODUCT><VERSION>
PRODUCT_VERSION=$(ls ~/Library/Preferences | grep IntelliJIdea)

#Configuration (idea.config.path):
#~/Library/Preferences/${PRODUCT_VERSION}

#Plugins (idea.plugins.path):
#~/Library/Application\ Support/${PRODUCT_VERSION}

# Copy color scheme
cp ${MY_DIR}/files/intellij/colors_rx.scheme.xml ${HOME}/Library/Preferences/${PRODUCT_VERSION}/options/colors.scheme.xml

# Copy codestyles
cp ${MY_DIR}/files/intellij/codestyles_rx.xml ${HOME}/Library/Preferences/${PRODUCT_VERSION}/codestyles/Default.xml