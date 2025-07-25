GT7_SIMDASH_VERSION = $(if $(SIMDASH_TAG),$(SIMDASH_TAG),main)
GT7_SIMDASH_SITE = https://github.com/chrshdl/gt7-simdash.git
GT7_SIMDASH_SITE_METHOD = git

GT7_SIMDASH_DEPENDENCIES = python3

define GT7_SIMDASH_INSTALL_TARGET_CMDS
    $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install PREFIX=$(TARGET_DIR)/usr
endef

$(eval $(python-package))

