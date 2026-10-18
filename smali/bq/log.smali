.class public Lbq/log;
.super Ljava/lang/Object;
.source "log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbq/log$console_callback_delegate;
    }
.end annotation


# static fields
.field private static console_callback_delegate_:Lbq/log$console_callback_delegate;

.field private static default_category_:Lbq/def/log_category_base;


# instance fields
.field private categories_mask_array_:Ljava/nio/ByteBuffer;

.field protected categories_name_array_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lbq/impl/log_context;

.field private log_id_:J

.field private merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

.field private name_:Ljava/lang/String;

.field private print_stack_level_bitmap_:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 33
    const-string/jumbo v0, "sunos"

    const-string v1, "dragonfly"

    const-string v2, "netbsd"

    const-string v3, "openbsd"

    const-string v4, "freebsd"

    const-string/jumbo v5, "x86"

    const-string v6, ""

    const-string v7, "/natives/"

    :try_start_0
    const-string v8, "java.vm.name"

    invoke-static {v8, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Dalvik"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "BqCCS"

    if-nez v8, :cond_12

    :try_start_1
    const-string v8, "java.vendor"

    .line 34
    invoke-static {v8, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_8

    .line 44
    :cond_0
    const-string v8, "os.name"

    invoke-static {v8, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 45
    const-string v10, "os.arch"

    invoke-static {v10, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 49
    const-string v10, "amd64"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v11, "x86_64"

    if-nez v10, :cond_4

    :try_start_2
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    const-string v10, "aarch64"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v11, "arm64"

    if-nez v10, :cond_4

    :try_start_3
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "i386"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "i686"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    goto :goto_1

    :cond_4
    :goto_0
    move-object v5, v11

    .line 57
    :cond_5
    :goto_1
    const-string/jumbo v6, "win"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 58
    const-string/jumbo v0, "windows"

    .line 59
    const-string v1, "BqCCS.dll"

    goto :goto_4

    .line 60
    :cond_6
    const-string v6, "mac"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "darwin"

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    .line 63
    :cond_7
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v10, "libBqCCS.so"

    if-eqz v6, :cond_9

    move-object v0, v4

    :cond_8
    :goto_2
    move-object v1, v10

    goto :goto_4

    .line 66
    :cond_9
    :try_start_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v0, v3

    goto :goto_2

    .line 69
    :cond_a
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v0, v2

    goto :goto_2

    .line 72
    :cond_b
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v1

    goto :goto_2

    .line 75
    :cond_c
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "solaris"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    .line 80
    :cond_d
    const-string v0, "linux"

    goto :goto_2

    .line 61
    :cond_e
    :goto_3
    const-string v0, "macos"

    .line 62
    const-string v1, "libBqCCS.dylib"

    :goto_4
    const/16 v2, 0x2e

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x0

    .line 88
    :try_start_5
    const-class v3, Lbq/log;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_10

    .line 90
    :try_start_6
    const-string v3, "BqCCS_"

    invoke-static {v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 92
    invoke-static {v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/nio/file/CopyOption;

    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardCopyOption;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v5}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x1

    goto :goto_6

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_f

    .line 88
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_5
    throw v2

    :cond_10
    :goto_6
    if-eqz v0, :cond_11

    .line 96
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    :catch_0
    nop

    :cond_11
    :goto_7
    if-nez v1, :cond_13

    .line 101
    :try_start_9
    invoke-static {v9}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_9

    .line 36
    :cond_12
    :goto_8
    invoke-static {v9}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    :cond_13
    :goto_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lbq/log$1;

    invoke-direct {v1}, Lbq/log$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 111
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Failed to Load BqCCS"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :goto_a
    new-instance v0, Lbq/log$2;

    invoke-direct {v0}, Lbq/log$2;-><init>()V

    sput-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    const/4 v0, 0x0

    .line 126
    sput-object v0, Lbq/log;->console_callback_delegate_:Lbq/log$console_callback_delegate;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lbq/log;->log_id_:J

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lbq/log;->name_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 131
    iput-object v0, p0, Lbq/log;->categories_mask_array_:Ljava/nio/ByteBuffer;

    .line 132
    iput-object v0, p0, Lbq/log;->print_stack_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 134
    iput-object v0, p0, Lbq/log;->categories_name_array_:Ljava/util/List;

    .line 135
    iput-object v0, p0, Lbq/log;->context_:Lbq/impl/log_context;

    return-void
.end method

.method protected constructor <init>(Lbq/log;)V
    .locals 6

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lbq/log;->log_id_:J

    .line 129
    const-string v2, ""

    iput-object v2, p0, Lbq/log;->name_:Ljava/lang/String;

    const/4 v2, 0x0

    .line 130
    iput-object v2, p0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 131
    iput-object v2, p0, Lbq/log;->categories_mask_array_:Ljava/nio/ByteBuffer;

    .line 132
    iput-object v2, p0, Lbq/log;->print_stack_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 134
    iput-object v2, p0, Lbq/log;->categories_name_array_:Ljava/util/List;

    .line 135
    iput-object v2, p0, Lbq/log;->context_:Lbq/impl/log_context;

    .line 395
    iget-object v2, p1, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 396
    iget-object v2, p1, Lbq/log;->name_:Ljava/lang/String;

    iput-object v2, p0, Lbq/log;->name_:Ljava/lang/String;

    .line 397
    iget-wide v2, p1, Lbq/log;->log_id_:J

    iput-wide v2, p0, Lbq/log;->log_id_:J

    .line 398
    invoke-static {v2, v3}, Lbq/impl/log_invoker;->__api_get_log_merged_log_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 399
    iget-wide v2, p0, Lbq/log;->log_id_:J

    invoke-static {v2, v3}, Lbq/impl/log_invoker;->__api_get_log_category_masks_array_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lbq/log;->categories_mask_array_:Ljava/nio/ByteBuffer;

    .line 400
    iget-wide v2, p0, Lbq/log;->log_id_:J

    invoke-static {v2, v3}, Lbq/impl/log_invoker;->__api_get_log_print_stack_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lbq/log;->print_stack_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 402
    iget-wide v2, p0, Lbq/log;->log_id_:J

    invoke-static {v2, v3}, Lbq/impl/log_invoker;->__api_get_log_categories_count(J)J

    move-result-wide v2

    .line 403
    new-instance p1, Ljava/util/ArrayList;

    long-to-int v4, v2

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lbq/log;->categories_name_array_:Ljava/util/List;

    :goto_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 406
    iget-wide v4, p0, Lbq/log;->log_id_:J

    invoke-static {v4, v5, v0, v1}, Lbq/impl/log_invoker;->__api_get_log_category_name_by_index(JJ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object v4, p0, Lbq/log;->categories_name_array_:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 412
    :cond_1
    new-instance p1, Lbq/impl/log_context;

    invoke-direct {p1}, Lbq/impl/log_context;-><init>()V

    iput-object p1, p0, Lbq/log;->context_:Lbq/impl/log_context;

    return-void
.end method

.method public static console(Lbq/def/log_level;Ljava/lang/String;)V
    .locals 0

    .line 380
    invoke-virtual {p0}, Lbq/def/log_level;->ordinal()I

    move-result p0

    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_log_device_console(ILjava/lang/String;)V

    return-void
.end method

.method public static create_log(Ljava/lang/String;Ljava/lang/String;)Lbq/log;
    .locals 3

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-static {p0, p1, v0, v1, v2}, Lbq/impl/log_invoker;->__api_create_log(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)J

    move-result-wide p0

    .line 281
    invoke-static {p0, p1}, Lbq/log;->get_log_by_id(J)Lbq/log;

    move-result-object p0

    return-object p0

    .line 278
    :cond_1
    :goto_0
    new-instance p0, Lbq/log;

    invoke-direct {p0}, Lbq/log;-><init>()V

    return-object p0
.end method

.method public static enable_auto_crash_handle()V
    .locals 0

    .line 240
    invoke-static {}, Lbq/impl/log_invoker;->__api_enable_auto_crash_handler()V

    return-void
.end method

.method public static fetch_and_remove_console_buffer(Lbq/log$console_callback_delegate;)Z
    .locals 0

    .line 369
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_fetch_and_remove_console_buffer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static force_flush_all_logs()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 317
    invoke-static {v0, v1}, Lbq/impl/log_invoker;->__api_force_flush(J)V

    return-void
.end method

.method public static get_file_base_dir(I)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_get_file_base_dir(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static get_log_by_id(J)Lbq/log;
    .locals 7

    .line 139
    new-instance v0, Lbq/log;

    invoke-direct {v0}, Lbq/log;-><init>()V

    .line 140
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_get_log_name_by_id(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 145
    :cond_0
    iput-object v1, v0, Lbq/log;->name_:Ljava/lang/String;

    .line 146
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_get_log_merged_log_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 147
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_get_log_category_masks_array_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lbq/log;->categories_mask_array_:Ljava/nio/ByteBuffer;

    .line 148
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_get_log_print_stack_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lbq/log;->print_stack_level_bitmap_:Ljava/nio/ByteBuffer;

    .line 150
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_get_log_categories_count(J)J

    move-result-wide v1

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lbq/log;->categories_name_array_:Ljava/util/List;

    const-wide/16 v3, 0x0

    :goto_0
    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    .line 154
    invoke-static {p0, p1, v3, v4}, Lbq/impl/log_invoker;->__api_get_log_category_name_by_index(JJ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 157
    iget-object v6, v0, Lbq/log;->categories_name_array_:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 160
    :cond_2
    iput-wide p0, v0, Lbq/log;->log_id_:J

    .line 161
    new-instance p0, Lbq/impl/log_context;

    invoke-direct {p0}, Lbq/impl/log_context;-><init>()V

    iput-object p0, v0, Lbq/log;->context_:Lbq/impl/log_context;

    return-object v0
.end method

.method public static get_log_by_name(Ljava/lang/String;)Lbq/log;
    .locals 7

    if-eqz p0, :cond_3

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-static {}, Lbq/impl/log_invoker;->__api_get_logs_count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 301
    invoke-static {v2, v3}, Lbq/impl/log_invoker;->__api_get_log_id_by_index(J)J

    move-result-wide v4

    .line 302
    invoke-static {v4, v5}, Lbq/impl/log_invoker;->__api_get_log_name_by_id(J)Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    invoke-static {v4, v5}, Lbq/log;->get_log_by_id(J)Lbq/log;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 308
    :cond_2
    new-instance p0, Lbq/log;

    invoke-direct {p0}, Lbq/log;-><init>()V

    return-object p0

    .line 296
    :cond_3
    :goto_1
    new-instance p0, Lbq/log;

    invoke-direct {p0}, Lbq/log;-><init>()V

    return-object p0
.end method

.method public static get_version()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-static {}, Lbq/impl/log_invoker;->__api_get_log_version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private is_enable_for(Lbq/def/log_category_base;Lbq/def/log_level;)Z
    .locals 5

    .line 179
    iget-object v0, p0, Lbq/log;->merged_log_level_bitmap_:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p2}, Lbq/def/log_level;->ordinal()I

    move-result p2

    const/4 v2, 0x1

    shl-int p2, v2, p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lbq/log;->categories_mask_array_:Ljava/nio/ByteBuffer;

    .line 180
    invoke-static {p1}, Lbq/def/log_category_base;->get_index(Lbq/def/log_category_base;)J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method private static native_console_buffer_fetch_and_remove_callback(Lbq/log$console_callback_delegate;JIILjava/lang/String;)V
    .locals 7

    .line 175
    invoke-static {}, Lbq/def/log_level;->values()[Lbq/def/log_level;

    move-result-object v0

    aget-object v5, v0, p4

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lbq/log$console_callback_delegate;->callback(JILbq/def/log_level;Ljava/lang/String;)V

    return-void
.end method

.method private static native_console_callback(JIILjava/lang/String;)V
    .locals 6

    .line 168
    sget-object v0, Lbq/log;->console_callback_delegate_:Lbq/log$console_callback_delegate;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lbq/def/log_level;->values()[Lbq/def/log_level;

    move-result-object v1

    aget-object v4, v1, p3

    move-wide v1, p0

    move v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lbq/log$console_callback_delegate;->callback(JILbq/def/log_level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static register_console_callback(Lbq/log$console_callback_delegate;)V
    .locals 0

    .line 327
    sput-object p0, Lbq/log;->console_callback_delegate_:Lbq/log$console_callback_delegate;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 329
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_set_console_callback(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 331
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_set_console_callback(Z)V

    :goto_0
    return-void
.end method

.method public static reset_base_dir(ILjava/lang/String;)V
    .locals 0

    .line 261
    invoke-static {p0, p1}, Lbq/impl/log_invoker;->__api_reset_base_dir(ILjava/lang/String;)V

    return-void
.end method

.method public static set_console_buffer_enable(Z)V
    .locals 0

    .line 355
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_set_console_buffer_enable(Z)V

    return-void
.end method

.method public static unregister_console_callback(Lbq/log$console_callback_delegate;)V
    .locals 1

    .line 341
    sget-object v0, Lbq/log;->console_callback_delegate_:Lbq/log$console_callback_delegate;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 342
    sput-object p0, Lbq/log;->console_callback_delegate_:Lbq/log$console_callback_delegate;

    const/4 p0, 0x0

    .line 343
    invoke-static {p0}, Lbq/impl/log_invoker;->__api_set_console_callback(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Z
    .locals 3

    .line 523
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->debug:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 527
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->debug:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected varargs do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p4

    .line 189
    invoke-direct/range {p0 .. p2}, Lbq/log;->is_enable_for(Lbq/def/log_category_base;Lbq/def/log_level;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    .line 194
    :cond_0
    array-length v0, v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, v8, v1

    .line 196
    iget-object v3, v7, Lbq/log;->context_:Lbq/impl/log_context;

    invoke-virtual {v3, v2}, Lbq/impl/log_context;->get_param_storage_size_no_optimized(Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v12, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, v7, Lbq/log;->print_stack_level_bitmap_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lbq/def/log_level;->ordinal()I

    move-result v1

    const/4 v14, 0x1

    shl-int v1, v14, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    .line 202
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    const/16 v3, 0xa

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_3
    move-object/from16 v1, p3

    move-object v4, v1

    .line 209
    :goto_2
    iget-object v0, v7, Lbq/log;->context_:Lbq/impl/log_context;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v5, v12

    invoke-virtual/range {v0 .. v6}, Lbq/impl/log_context;->begin_copy(Lbq/log;Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_4

    return v9

    :cond_4
    cmp-long v1, v12, v10

    if-lez v1, :cond_6

    .line 215
    array-length v1, v8

    :goto_3
    if-ge v9, v1, :cond_5

    aget-object v2, v8, v9

    .line 217
    iget-object v3, v7, Lbq/log;->context_:Lbq/impl/log_context;

    invoke-virtual {v3, v0, v2}, Lbq/impl/log_context;->add_param_no_optimized(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 219
    :cond_5
    iget-object v0, v7, Lbq/log;->context_:Lbq/impl/log_context;

    invoke-virtual {v0, p0}, Lbq/impl/log_context;->end_copy(Lbq/log;)V

    :cond_6
    return v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 491
    instance-of v1, p1, Lbq/log;

    if-nez v1, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    iget-wide v1, p0, Lbq/log;->log_id_:J

    check-cast p1, Lbq/log;

    invoke-virtual {p1}, Lbq/log;->get_id()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public error(Ljava/lang/String;)Z
    .locals 3

    .line 550
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->error:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 554
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->error:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fatal(Ljava/lang/String;)Z
    .locals 3

    .line 559
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->fatal:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 563
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->fatal:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public force_flush()V
    .locals 2

    .line 444
    iget-wide v0, p0, Lbq/log;->log_id_:J

    invoke-static {v0, v1}, Lbq/impl/log_invoker;->__api_force_flush(J)V

    return-void
.end method

.method public get_id()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lbq/log;->log_id_:J

    return-wide v0
.end method

.method public get_name()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lbq/log;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 500
    iget-wide v0, p0, Lbq/log;->log_id_:J

    invoke-static {v0, v1}, Lbq/log$$ExternalSyntheticBackport3;->m(J)I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;)Z
    .locals 3

    .line 532
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->info:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 536
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->info:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public is_valid()Z
    .locals 5

    .line 462
    invoke-virtual {p0}, Lbq/log;->get_id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset_config(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lbq/log;->name_:Ljava/lang/String;

    invoke-static {v0, p1}, Lbq/impl/log_invoker;->__api_log_reset_config(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public set_appender_enable(Ljava/lang/String;Z)V
    .locals 2

    .line 435
    iget-wide v0, p0, Lbq/log;->log_id_:J

    invoke-static {v0, v1, p1, p2}, Lbq/impl/log_invoker;->__api_set_appender_enable(JLjava/lang/String;Z)V

    return-void
.end method

.method public take_snapshot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 485
    iget-wide v0, p0, Lbq/log;->log_id_:J

    invoke-static {v0, v1, p1}, Lbq/impl/log_invoker;->__api_take_snapshot_string(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verbose(Ljava/lang/String;)Z
    .locals 3

    .line 509
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->verbose:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 513
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->verbose:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public warning(Ljava/lang/String;)Z
    .locals 3

    .line 541
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->warning:Lbq/def/log_level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 545
    sget-object v0, Lbq/log;->default_category_:Lbq/def/log_category_base;

    sget-object v1, Lbq/def/log_level;->warning:Lbq/def/log_level;

    invoke-virtual {p0, v0, v1, p1, p2}, Lbq/log;->do_log(Lbq/def/log_category_base;Lbq/def/log_level;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
