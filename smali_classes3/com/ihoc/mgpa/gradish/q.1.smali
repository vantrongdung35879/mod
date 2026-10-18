.class public Lcom/ihoc/mgpa/gradish/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/q$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ihoc/mgpa/gradish/r0;

.field private e:I

.field private final f:Lcom/ihoc/mgpa/gradish/U;

.field private final g:Ljava/util/List;

.field private h:J

.field private volatile i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-MoveTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ihoc/mgpa/gradish/U;Lcom/ihoc/mgpa/gradish/r0;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->g:Ljava/util/List;

    const-wide/32 v0, -0x3200000

    .line 8
    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/q;->h:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/q;->i:Z

    .line 12
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    .line 15
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    .line 16
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    .line 17
    iget-object p1, p2, Lcom/ihoc/mgpa/gradish/r0;->a:Lcom/ihoc/mgpa/gradish/t0$b;

    iget-object v0, p1, Lcom/ihoc/mgpa/gradish/t0$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    .line 18
    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/t0$b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    .line 19
    iget-object p1, p2, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    return-void
.end method

.method private a(Lcom/ihoc/mgpa/gradish/r0;II)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/gradish/q$a;

    .line 135
    invoke-interface {v1, p1, p2, p3}, Lcom/ihoc/mgpa/gradish/q$a;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 136
    sget-object v0, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setDestDir]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    const-string p0, "[setDestDir]: dir do not exits."

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    const-string p0, "[setDestDir]: dir is not directory."

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    sput-object p0, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    return-void

    .line 154
    :cond_4
    :goto_0
    const-string p0, "[setDestDir]: dir can not write or read."

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/util/HashMap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 130
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 131
    const-string p1, "1"

    goto :goto_0

    .line 130
    :cond_0
    const-string p1, "0"

    .line 133
    :goto_0
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "noDeletePD.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->isFileExsits(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/util/List;)Z

    move-result p1

    .line 111
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/q;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    const-string v2, "fileMD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "action"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-boolean v1, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 120
    :goto_0
    const-string v3, "scenes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "2"

    .line 124
    :goto_1
    const-string/jumbo p1, "state"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {p1}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    return-void
.end method

.method private a()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/r0;->a:Lcom/ihoc/mgpa/gradish/t0$b;

    iget-wide v2, v0, Lcom/ihoc/mgpa/gradish/t0$b;->b:J

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    const-string v2, "[checkLocalFileBySize]: file size incorrect, delete it."

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    const-string v1, ".pd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    const-string v2, "fileMD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "action"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "1"

    .line 8
    :goto_0
    const-string v3, "scenes"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v1}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 23

    move-object/from16 v1, p0

    .line 9
    const-string v2, "[copyFileByFileChannel]: finally: close IO"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, -0x1

    if-ge v0, v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x0

    .line 19
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 22
    :try_start_1
    const-string v6, "r"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 23
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 24
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 27
    :try_start_3
    new-instance v14, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    move-object/from16 v7, p2

    invoke-direct {v14, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 30
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    .line 32
    iget-wide v7, v1, Lcom/ihoc/mgpa/gradish/q;->h:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/32 v17, 0x3200000

    add-long v7, v7, v17

    const-wide/16 v9, 0x0

    move-wide/from16 v19, v9

    move-wide v10, v7

    :goto_0
    const-string v12, "\n"

    cmp-long v7, v10, v15

    if-gez v7, :cond_4

    .line 34
    :try_start_5
    iget-boolean v7, v1, Lcom/ihoc/mgpa/gradish/q;->i:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/ihoc/mgpa/gradish/q;->j:Z

    if-nez v7, :cond_1

    .line 35
    sget-object v0, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[copyFileByFileChannel]: copy pause in fileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 61
    invoke-static {v14}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v13}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 63
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 64
    invoke-static {v5}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x2

    return v0

    .line 65
    :cond_1
    :try_start_6
    iput v0, v1, Lcom/ihoc/mgpa/gradish/q;->e:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/32 v21, 0x3200000

    move-object v7, v13

    move-wide v8, v10

    move-object/from16 p1, v5

    move-wide v4, v10

    move-wide/from16 v10, v21

    move-object v0, v12

    move-object v12, v3

    .line 66
    :try_start_7
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v7

    .line 67
    iget-wide v9, v1, Lcom/ihoc/mgpa/gradish/q;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/ihoc/mgpa/gradish/q;->h:J

    cmp-long v11, v7, v17

    if-eqz v11, :cond_2

    .line 68
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    cmp-long v22, v9, v11

    if-eqz v22, :cond_2

    .line 69
    sget-object v9, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyFileByFileChannel curTSFDone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " != tsfBlock at i:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    iget-wide v7, v1, Lcom/ihoc/mgpa/gradish/q;->h:J

    const-wide/16 v9, 0x64

    mul-long v7, v7, v9

    div-long/2addr v7, v15

    cmp-long v0, v7, v19

    if-lez v0, :cond_3

    .line 74
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    long-to-int v9, v7

    const/4 v10, 0x1

    invoke-direct {v1, v0, v9, v10}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    move-wide/from16 v19, v7

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    :goto_1
    add-long v4, v4, v17

    move-wide v10, v4

    const/4 v0, 0x1

    const/4 v4, -0x1

    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_4
    move-object/from16 p1, v5

    move-object v0, v12

    .line 77
    sget-object v4, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyFileByFileChannel tsfDone "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/ihoc/mgpa/gradish/q;->h:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " inChannel.size() : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 85
    invoke-static {v4, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v14}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v13}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 90
    invoke-static/range {p1 .. p1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x3

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 p1, v5

    :goto_2
    move-object/from16 v5, p1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 p1, v5

    :goto_3
    move-object/from16 v5, p3

    move-object v4, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 p1, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 p1, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 p1, v5

    move-object v13, v3

    :goto_4
    move-object/from16 v5, p1

    move-object v14, v3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 p1, v5

    move-object v13, v3

    :goto_5
    move-object/from16 v5, p3

    move-object v4, v3

    move-object v14, v4

    :goto_6
    move-object/from16 v3, p1

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 p1, v5

    move-object v4, v3

    move-object v6, v4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 p1, v5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_7
    move-object v14, v6

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v5, v3

    :goto_8
    move-object v4, v3

    move-object v6, v4

    move-object v13, v6

    move-object v14, v13

    move-object v3, v5

    move-object/from16 v5, p3

    .line 91
    :goto_9
    :try_start_8
    invoke-direct {v1, v0, v5}, Lcom/ihoc/mgpa/gradish/q;->a(Ljava/lang/Throwable;Ljava/util/HashMap;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 95
    sget-object v0, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 97
    invoke-static {v14}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v13}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 99
    invoke-static {v4}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    const/4 v2, -0x1

    return v2

    :catchall_6
    move-exception v0

    move-object v5, v3

    move-object v3, v13

    :goto_a
    move-object v13, v3

    move-object v3, v4

    .line 101
    :goto_b
    sget-object v4, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v14}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 104
    invoke-static {v13}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 105
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v5}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 107
    throw v0
.end method

.method public a(Lcom/ihoc/mgpa/gradish/q$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Lcom/ihoc/mgpa/gradish/U;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/gradish/q;->e:I

    return v0
.end method

.method public d()Lcom/ihoc/mgpa/gradish/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    check-cast p1, Lcom/ihoc/mgpa/gradish/q;

    .line 5
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/q;->j:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    const-string v0, " copy from uri success"

    const-string v2, "detail"

    const-string v3, "2"

    const-string v4, "channel"

    const-string/jumbo v5, "state"

    .line 0
    const-string v6, "copy "

    const-string v7, "[CopyFileFromUriTask]: copy dest dir: "

    const-string v8, "copy from "

    const-string v9, "CopyFileFromUriTask exist in dir, needn\'t copy from"

    .line 1
    sget-object v10, Lcom/ihoc/mgpa/gradish/q;->k:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CopyFileFromUriTask uri fileUri: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v12, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    const-string v13, "fileName"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v12, v1, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    const-string v13, "fileMD5"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v12, v1, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    const-string v13, "filePath"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v12, "action"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v12, v1, Lcom/ihoc/mgpa/gradish/q;->j:Z

    const-string v14, "1"

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v14

    .line 9
    :goto_0
    const-string v12, "owner"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :try_start_0
    iget v15, v1, Lcom/ihoc/mgpa/gradish/q;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v12, "errorCode"

    const/4 v13, 0x4

    if-ne v15, v13, :cond_4

    .line 14
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q;->a()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q;->e()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    iget-object v9, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    iget-object v9, v9, Lcom/ihoc/mgpa/gradish/r0;->a:Lcom/ihoc/mgpa/gradish/t0$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v8

    :try_start_2
    iget-wide v8, v9, Lcom/ihoc/mgpa/gradish/t0$b;->b:J

    long-to-double v8, v8

    const-wide v17, 0x3ff3333333333333L    # 1.2

    mul-double v8, v8, v17

    double-to-long v8, v8

    .line 27
    invoke-static {}, Lcom/ihoc/mgpa/gradish/d0;->b()Lcom/ihoc/mgpa/gradish/d0;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ihoc/mgpa/gradish/d0;->a()J

    move-result-wide v17

    cmp-long v15, v8, v17

    if-lez v15, :cond_2

    .line 29
    const-string v0, "[moveTask]: fail: space no enough."

    invoke-static {v10, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    .line 30
    iput v6, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 31
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7, v6}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 32
    const-string v0, "4"

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v0}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v11}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    .line 96
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ihoc/mgpa/gradish/U;->b(Z)V

    return-void

    :cond_2
    const-wide/32 v8, -0x3200000

    .line 97
    :try_start_3
    iput-wide v8, v1, Lcom/ihoc/mgpa/gradish/q;->h:J

    const/4 v8, 0x0

    .line 98
    iput v8, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q;->g()V

    .line 100
    iget-object v9, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    const/4 v15, 0x1

    invoke-interface {v9, v15}, Lcom/ihoc/mgpa/gradish/U;->b(Z)V

    .line 101
    iget-object v9, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    invoke-direct {v1, v9, v8, v8}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object v13, v8

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 103
    iput v0, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 104
    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/16 v7, 0x64

    invoke-direct {v1, v6, v7, v0}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 105
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exist in local dir and md5 is equal"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v0, v6, v8, v7}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 106
    invoke-virtual {v11, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "existed"

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v0}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v11}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    .line 183
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ihoc/mgpa/gradish/U;->b(Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object v13, v8

    goto/16 :goto_3

    :cond_4
    move-object v13, v8

    .line 184
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 185
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v4

    :try_start_5
    sget-object v4, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v7, v1, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v7, v4, v11}, Lcom/ihoc/mgpa/gradish/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v4

    .line 188
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sub-long v7, v17, v8

    long-to-double v7, v7

    const-wide v17, 0x41cdcd6500000000L    # 1.0E9

    div-double v7, v7, v17

    double-to-float v7, v7

    .line 189
    const-string v8, "%.2f"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v15, v9

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " took : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "S  copyResult: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v6, "3"

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    .line 193
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q;->a()Z

    move-result v7

    if-nez v7, :cond_5

    .line 194
    const-string v4, "[run]: copy finish but file size is error!"

    invoke-static {v10, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    :cond_5
    const/4 v7, -0x1

    if-ne v4, v7, :cond_6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " copy from uri fail"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 201
    iput v4, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 202
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6, v4}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q;->a()Z

    .line 204
    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " copy from uri pause"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput v7, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 208
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v7}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 209
    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_7
    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 212
    iput v4, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 213
    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7, v0}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 214
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/16 v4, 0x64

    const/4 v6, 0x3

    invoke-direct {v1, v0, v4, v6}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 215
    invoke-virtual {v11, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-direct {v1, v0}, Lcom/ihoc/mgpa/gradish/q;->a(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v16, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    move-object v13, v8

    :goto_4
    const/4 v4, -0x1

    .line 234
    :try_start_7
    iput v4, v1, Lcom/ihoc/mgpa/gradish/q;->e:I

    .line 235
    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->d:Lcom/ihoc/mgpa/gradish/r0;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v4}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/r0;II)V

    .line 236
    iget-object v4, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    iget-object v6, v1, Lcom/ihoc/mgpa/gradish/q;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/ihoc/mgpa/gradish/q;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8, v7}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 237
    invoke-direct {v1, v0, v11}, Lcom/ihoc/mgpa/gradish/q;->a(Ljava/lang/Throwable;Ljava/util/HashMap;)V

    .line 238
    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v3, ""

    :cond_8
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 231
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v0}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {v11}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    .line 233
    iget-object v0, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/ihoc/mgpa/gradish/U;->b(Z)V

    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v2, v16

    .line 243
    iget-object v3, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v3}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {v11}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    .line 245
    iget-object v2, v1, Lcom/ihoc/mgpa/gradish/q;->f:Lcom/ihoc/mgpa/gradish/U;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ihoc/mgpa/gradish/U;->b(Z)V

    .line 246
    throw v0
.end method
