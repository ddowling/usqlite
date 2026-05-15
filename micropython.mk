USQLITE_MOD_DIR := $(USERMOD_DIR)

# MicroPython binding sources — scanned for QSTRs.
SRC_USERMOD_C += \
    $(USQLITE_MOD_DIR)/usqlite_module.c \
    $(USQLITE_MOD_DIR)/usqlite_connection.c \
    $(USQLITE_MOD_DIR)/usqlite_cursor.c \
    $(USQLITE_MOD_DIR)/usqlite_row.c \
    $(USQLITE_MOD_DIR)/usqlite_file.c \
    $(USQLITE_MOD_DIR)/usqlite_mem.c \
    $(USQLITE_MOD_DIR)/usqlite_vfs.c \
    $(USQLITE_MOD_DIR)/usqlite_utils.c

# usqlite.c #includes sqlite3.c after applying compile-time configuration
# (usqlite_config.h defines).  Kept in LIB to avoid QSTR-scanning the full
# SQLite amalgamation.
SRC_USERMOD_LIB_C += $(USQLITE_MOD_DIR)/usqlite.c

CFLAGS_USERMOD += -I$(USQLITE_MOD_DIR)
