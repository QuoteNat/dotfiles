#!/bin/bash
sudo dnf update
flatpak update
flatpak run it.mijorus.gearlever --update ~/AppImages/*
distrobox upgrade -a
dnf needs-restarting
