.class public final Lcom/uqm/crashsight/crashreport/crash/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static c:I


# instance fields
.field protected a:Lcom/uqm/crashsight/CrashSightStrategy$a;

.field protected b:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/uqm/crashsight/proguard/l;

.field private f:Lcom/uqm/crashsight/proguard/d;

.field private g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private h:I

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/uqm/crashsight/proguard/l;Lcom/uqm/crashsight/proguard/d;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/CrashSightStrategy$a;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z

    .line 82
    const-string v0, "null"

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->k:J

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->l:Ljava/lang/Thread;

    .line 99
    sput p1, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    .line 100
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    .line 102
    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/b;->f:Lcom/uqm/crashsight/proguard/d;

    .line 103
    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/b;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 104
    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    const/4 p1, 0x2

    .line 105
    iput p1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->h:I

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 940
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    :cond_0
    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 p0, 0x9

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 7

    .line 2011
    const-string v0, "del tmp failed"

    const-string v1, "del tmp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x1

    .line 2017
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    const-string v6, "zip %s"

    invoke-static {v6, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2018
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2019
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p0, 0x1388

    .line 2021
    invoke-static {v5, p2, p0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2022
    const-string p0, "zip fail!"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    .line 2026
    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2029
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v5, 0x1000

    .line 2030
    :try_start_1
    new-array v5, v5, [B

    .line 2032
    :goto_0
    invoke-virtual {p1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 2033
    invoke-virtual {p0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2034
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 2036
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 2037
    const-string v5, "read bytes :%d"

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2039
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v4

    .line 2040
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    .line 2041
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    const/4 v4, 0x2

    .line 2042
    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    .line 2043
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2052
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2056
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2057
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2058
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2059
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v2

    .line 2045
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_4

    .line 2050
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 2052
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2056
    :cond_4
    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2057
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2058
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_5

    .line 2059
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    return-object v2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_6

    .line 2050
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 2052
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2056
    :cond_6
    :goto_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2057
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2058
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2059
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2062
    :cond_7
    throw p0

    .line 2012
    :cond_8
    :goto_5
    const-string p0, "createZipAttachment sourcePath == null || context == null, pls check"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2
.end method

.method private static a(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;Lcom/uqm/crashsight/crashreport/common/info/a;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-eqz v1, :cond_2f

    if-eqz v2, :cond_2f

    if-nez v3, :cond_0

    goto/16 :goto_1c

    .line 1522
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v5

    .line 1523
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v6, 0x3e8

    const-string v7, ""

    const/4 v8, 0x1

    if-eq v0, v6, :cond_e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1590
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1591
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a(I)I

    move-result v0

    .line 1592
    iget-boolean v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-lez v0, :cond_3

    .line 3517
    sget-object v10, Lcom/uqm/crashsight/proguard/z;->ab:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v10}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v0, v10, :cond_1

    goto :goto_1

    :cond_1
    if-nez v9, :cond_2

    const/16 v9, 0x6f

    goto :goto_0

    :cond_2
    const/16 v9, 0xd3

    :goto_0
    add-int/2addr v9, v0

    sub-int/2addr v9, v8

    .line 3526
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v7

    .line 1592
    :goto_2
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1594
    :cond_4
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v0, v9, v4

    const-string v0, "crash type error! %d"

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1586
    :pswitch_0
    const-string v0, "143"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1582
    :pswitch_1
    const-string v0, "140"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1578
    :pswitch_2
    const-string v0, "121"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1574
    :pswitch_3
    const-string v0, "110"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1570
    :pswitch_4
    const-string v0, "10"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1561
    :pswitch_5
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "209"

    goto :goto_3

    :cond_5
    const-string v0, "109"

    :goto_3
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1529
    :pswitch_6
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_6

    const-string v0, "208"

    goto :goto_4

    :cond_6
    const-string v0, "108"

    :goto_4
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto/16 :goto_c

    .line 1551
    :pswitch_7
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "206"

    goto :goto_5

    :cond_7
    const-string v0, "106"

    :goto_5
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1556
    :pswitch_8
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_8

    const-string v0, "207"

    goto :goto_6

    :cond_8
    const-string v0, "107"

    :goto_6
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1547
    :pswitch_9
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "204"

    goto :goto_7

    :cond_9
    const-string v0, "104"

    :goto_7
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1525
    :pswitch_a
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_a

    const-string v0, "203"

    goto :goto_8

    :cond_a
    const-string v0, "103"

    :goto_8
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1543
    :pswitch_b
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_b

    const-string v0, "202"

    goto :goto_9

    :cond_b
    const-string v0, "102"

    :goto_9
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1538
    :pswitch_c
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_c

    const-string v0, "201"

    goto :goto_a

    :cond_c
    const-string v0, "101"

    :goto_a
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1534
    :pswitch_d
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_d

    const-string v0, "200"

    goto :goto_b

    :cond_d
    const-string v0, "100"

    :goto_b
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_c

    .line 1566
    :cond_e
    const-string v0, "1000"

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1598
    :goto_c
    iget-wide v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-virtual {v5, v9, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCrashTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1599
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setExpName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setExpMessage(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setExpAddr(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCallStack(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1603
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 1604
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putAllAllStacks(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1606
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setExpuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1607
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setSession(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setUserid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCrashThread(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1612
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v9, 0xa

    if-ne v0, v9, :cond_10

    .line 1613
    const-string v0, "[statics] encodeExceptionUpload for statics"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1614
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0

    .line 1617
    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setAppInfo(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1619
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 1620
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1621
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v11

    .line 1622
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v12, v12, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v11

    .line 1623
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v12, v12, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setUUID(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v11

    .line 1624
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v10, v10, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v10

    .line 1625
    invoke-virtual {v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v10

    .line 1626
    invoke-virtual {v5, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addPlugins(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_d

    .line 1630
    :cond_11
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    const-string v10, "utf-8"

    if-eqz v0, :cond_12

    .line 1631
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCrashCount(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1632
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 1634
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v11, "alltimes.txt"

    .line 1635
    invoke-virtual {v0, v11}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1636
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v11, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 1637
    invoke-virtual {v11, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1638
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1639
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 1641
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1642
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1647
    :cond_12
    :goto_e
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iget-boolean v11, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    .line 1648
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v12, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-wide v14, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x5

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v0, v9, v4

    aput-object v11, v9, v8

    const/4 v11, 0x2

    aput-object v12, v9, v11

    const/4 v12, 0x3

    aput-object v13, v9, v12

    const/4 v13, 0x4

    aput-object v14, v9, v13

    .line 1647
    const-string v0, "alltimes.txt,stack=%s,me=%b,mc=%d,\nmt=%s,et=%d"

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1650
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1652
    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v9, "log.txt"

    .line 1653
    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1654
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 1655
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1656
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1657
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 1659
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1660
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1664
    :cond_13
    :goto_f
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1666
    :try_start_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v9, "jniLog.txt"

    .line 1667
    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1668
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    .line 1669
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1670
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1671
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    .line 1673
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1674
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1679
    :cond_14
    :goto_10
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1682
    :try_start_3
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v9, "crashInfos.txt"

    .line 1683
    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1684
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;

    .line 1685
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1686
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1687
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    .line 1689
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1698
    :cond_15
    :goto_11
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ab:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1699
    const-string v0, "backupRecord.zip"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ab:Ljava/lang/String;

    .line 1700
    invoke-static {v0, v1, v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1702
    const-string v9, "attach backup record"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1703
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1709
    :cond_16
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    if-eqz v0, :cond_17

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    array-length v0, v0

    if-lez v0, :cond_17

    .line 1710
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v9, "crashsightlog.zip"

    .line 1711
    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1712
    invoke-virtual {v0, v11}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    .line 1713
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1714
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1716
    const-string v9, "attach user log"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1717
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1721
    :cond_17
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1723
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v8, :cond_18

    .line 1724
    const-string v0, "tomb.zip"

    goto :goto_12

    .line 1726
    :cond_18
    const-string v0, "trace.zip"

    .line 1728
    :goto_12
    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 1729
    invoke-static {v0, v1, v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1731
    const-string v9, "attach traces"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1732
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1733
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->ah:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v12, :cond_19

    .line 1734
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1736
    const-string v9, "attach uuidInfo"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1737
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1743
    :cond_19
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1744
    const-string v0, "minidump.zip"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    .line 1745
    invoke-static {v0, v1, v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1747
    const-string v9, "attach minidump.zip"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1748
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1752
    :cond_1a
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1753
    const-string v0, "stacktracejson.zip"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 1754
    invoke-static {v0, v1, v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1756
    const-string v9, "attach stacktrace.zip"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1757
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1761
    :cond_1b
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v8, :cond_1c

    .line 1762
    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1765
    :try_start_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    const-string v14, "cpuInfoFeatures.txt"

    .line 1766
    invoke-virtual {v9, v14}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    .line 1767
    invoke-virtual {v9, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    .line 1768
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1769
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1770
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1771
    const-string v0, "attach cpuInfo Features"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    .line 1773
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1774
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1779
    :cond_1c
    :goto_13
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v12, :cond_1e

    .line 1780
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v0, v9, v4

    const-string v0, "crashBean.anrMessages:%s"

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1781
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    if-eqz v0, :cond_1e

    .line 1782
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    const-string v9, "CS_CR_01"

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1785
    :try_start_5
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    .line 1786
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1787
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v14, "anrMessage.txt"

    .line 1788
    invoke-virtual {v0, v14}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1789
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v14, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    .line 1791
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1792
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1790
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1794
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1795
    const-string v0, "attach anr message"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_14

    :catch_5
    move-exception v0

    .line 1798
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1799
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_14

    .line 1801
    :cond_1d
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    const-string v9, "last_exit_info"

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1804
    :try_start_6
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    .line 1805
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1806
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v14, "anrLastExitInfo.txt"

    .line 1807
    invoke-virtual {v0, v14}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1808
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v14, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    .line 1810
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1811
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 1809
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1812
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1813
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1814
    const-string v0, "attach anr last exit info"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    .line 1817
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1818
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1824
    :cond_1e
    :goto_14
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1826
    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1827
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1830
    :cond_1f
    :try_start_7
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    const-string v14, "martianlog.txt"

    .line 1831
    invoke-virtual {v9, v14}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    .line 1832
    invoke-virtual {v9, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v9

    .line 1833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1834
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1835
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1837
    const-string v0, "attach pageTracingList"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_16

    :catch_7
    move-exception v0

    .line 1839
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1843
    :cond_20
    :goto_16
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Z:[B

    if-eqz v0, :cond_21

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Z:[B

    array-length v0, v0

    if-lez v0, :cond_21

    .line 1844
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    const-string v9, "userExtraByteData"

    .line 1845
    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1846
    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Z:[B

    .line 1847
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 1849
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1850
    const-string v0, "attach extraData"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1853
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A9"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A11"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A10"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A23"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A7"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A6"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A5"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A22"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A2"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A1"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A24"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A17"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A25"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A15"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A13"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "A34"

    invoke-virtual {v5, v13, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1871
    :try_start_8
    const-string v0, "A26"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    invoke-static {v14, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v0, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_17

    :catch_8
    move-exception v0

    .line 1873
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1875
    :goto_17
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v8, :cond_22

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A27"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A28"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1879
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A29"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A56"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A30"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A18"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    xor-int/2addr v10, v8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "A36"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F02"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->u:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F03"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F04"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->v:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F05"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F06"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F08"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F09"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->w:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "F10"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1906
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "C06"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1910
    :cond_23
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    if-ltz v0, :cond_24

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "C02"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1914
    :cond_24
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    if-eqz v0, :cond_25

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 1915
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1916
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "C03_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v13, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_18

    .line 1920
    :cond_25
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    if-eqz v0, :cond_26

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 1921
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1922
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "C04_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1923
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1922
    invoke-virtual {v5, v13, v10}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_19

    .line 1927
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G01"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ac:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G02"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1931
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->X:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ad:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G03"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ae:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G04"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1935
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G05"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->l:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G06"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/a;->m:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "G07"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1940
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    const-string v10, "G08"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1941
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    move-object v0, v7

    .line 1945
    :cond_28
    const-string v10, "G09"

    invoke-virtual {v5, v10, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    div-int/2addr v10, v6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G10"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G11"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G12"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G13"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/c;->f()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G14"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/c;->e()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "G15"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->Q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "engine_version"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->R:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "engine_build_config"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->S:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "engine_language"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->T:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "engine_locale"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->U:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "gpu_version"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->V:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "gpu_vendor"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/a;->W:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "gpu_renderer"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1959
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v8, :cond_2a

    .line 1960
    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    const-string v6, "buffered_maps"

    if-eqz v0, :cond_29

    iget-boolean v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:Z

    if-nez v0, :cond_29

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "lastBufferedMaps"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1962
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    goto :goto_1a

    .line 1964
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/uqm/crashsight/crashreport/common/info/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1967
    :cond_2a
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->T()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "vpn"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ah:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pthread_key_count"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ai:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "anr_mechanism"

    invoke-virtual {v5, v6, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1970
    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eqz v0, :cond_2b

    iget v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v8, :cond_2c

    .line 1972
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/uqm/crashsight/crashreport/common/info/e;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PROCESS_DEDICATED_ON_GPU_0"

    invoke-virtual {v5, v1, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1976
    :cond_2c
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    if-eqz v0, :cond_2d

    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1977
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->putAllUserMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 1978
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getUserMapCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "setted message size %d"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1980
    :cond_2d
    iget-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v1, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 1981
    invoke-virtual/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    iget-wide v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    sub-long/2addr v6, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v6, v13

    .line 1982
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v10, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    .line 1983
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v13, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v14, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v14, v8, :cond_2e

    const/4 v14, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v14, 0x0

    .line 1984
    :goto_1b
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v9, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v15, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    .line 1985
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getValueMapCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v4

    aput-object v1, v12, v8

    aput-object v3, v12, v11

    const/4 v1, 0x3

    aput-object v6, v12, v1

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v1, 0x5

    aput-object v10, v12, v1

    const/4 v0, 0x6

    aput-object v13, v12, v0

    const/4 v0, 0x7

    aput-object v14, v12, v0

    const/16 v0, 0x8

    aput-object v9, v12, v0

    const/16 v0, 0x9

    aput-object v15, v12, v0

    const/16 v1, 0xa

    aput-object v2, v12, v1

    const/16 v0, 0xb

    aput-object v16, v12, v0

    .line 1980
    const-string v0, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1986
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0

    .line 1519
    :cond_2f
    :goto_1c
    const-string v0, "enExp args == null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Lcom/uqm/crashsight/crashreport/common/info/a;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;",
            "Lcom/uqm/crashsight/crashreport/common/info/a;",
            ")",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1994
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1999
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage$Builder;

    move-result-object v0

    .line 2000
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 2001
    invoke-static {p0, v1, p2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;Lcom/uqm/crashsight/crashreport/common/info/a;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage$Builder;->addList(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage$Builder;

    goto :goto_0

    .line 2003
    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 1996
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "enEXPPkg args == null!"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1173
    :cond_0
    :try_start_0
    const-string v1, "_dt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1177
    :cond_1
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1178
    sget-object p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/v;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    if-eqz p0, :cond_2

    .line 1180
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 1184
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    .line 2217
    const-string v0, " > "

    const-string v2, "cs attach file length "

    const-string v3, "CrashAttachmentManager is null"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 2219
    const-string v0, "[attach][copyZipAttachFile] CrashAttachmentManager is null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2220
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2221
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    return-object v4

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 2226
    :goto_0
    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->n:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x1

    if-ge v3, v8, :cond_3

    .line 2227
    new-instance v8, Ljava/io/File;

    iget-object v10, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->o:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2228
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->n:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2229
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/c;->f()I

    move-result v11

    .line 2231
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    int-to-long v14, v11

    cmp-long v16, v12, v14

    if-lez v16, :cond_1

    sget-object v12, Lcom/uqm/crashsight/proguard/z;->A:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1

    .line 2232
    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2233
    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4105
    const-string v10, "[attach] saveAttachSizeError ..."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4106
    iput-wide v12, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    const/16 v10, 0x10

    .line 4107
    iput v10, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 4108
    iput-object v9, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 4109
    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    move-object/from16 v16, v5

    goto :goto_2

    .line 2236
    :cond_1
    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "AttachSize:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2237
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 5094
    const-string v5, "[attach] saveAttachSize ..."

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v5, v13}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5095
    iput-wide v11, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    .line 5096
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    .line 2240
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v5, "copy start"

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2241
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 5116
    const-string v5, "[attach] saveCopyStartError ..."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v11}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5117
    iput v9, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 5118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    .line 5119
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    .line 2242
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {v10, v8, v14, v15, v4}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;Ljava/io/File;JLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    .line 2245
    :cond_2
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "copy failed:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2247
    :goto_1
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    .line 2248
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v16, v5

    if-nez v7, :cond_4

    .line 2252
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "copy all failed!"

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    .line 2257
    :cond_4
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "copy end"

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2258
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 5137
    const-string v2, "[attach] saveCopyEnd ..."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5138
    iput v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 5139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    .line 5140
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    .line 2260
    iget v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 2262
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/c;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v2, v16

    .line 2268
    :goto_3
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    .line 2269
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 2270
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v3, "zip start"

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2271
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    .line 2272
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/c;->e()I

    move-result v0

    .line 2273
    invoke-virtual {v2, v1, v0}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Lcom/uqm/crashsight/crashreport/common/info/b;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    return-object v2

    .line 2278
    :cond_6
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v3, "zip end"

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2279
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b()V

    .line 2280
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)V

    .line 2281
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2283
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2284
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 2285
    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[copyZipAttachFile] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 2

    .line 438
    iget p0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->t()Z

    return-void

    .line 450
    :cond_1
    const-string p0, "IS_OPEN_UNITY_UP"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 451
    sget-object p0, Lcom/uqm/crashsight/proguard/z;->d:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 452
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->g()V

    .line 453
    const-string p0, "UNITY_UP_CLOSE_JAVA: Java monitor closed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    :cond_2
    sget-object p0, Lcom/uqm/crashsight/proguard/z;->e:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 455
    sget-object p0, Lcom/uqm/crashsight/proguard/z;->Q:Lcom/uqm/crashsight/proguard/z$a;

    const-string v1, "signal"

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/proguard/z$a;->a(Ljava/lang/Object;)V

    .line 456
    const-string p0, "UNITY_UP_JAVA_USE_FILTER: Crash Filter is java.lang.Error."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 458
    :cond_3
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->s()Z

    return-void

    .line 445
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/c;->s()Z

    return-void
.end method

.method private a(Lcom/uqm/crashsight/crashreport/crash/a;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1221
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 1224
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 1225
    iget v3, p1, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    iput v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    .line 1226
    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 1227
    iget v3, p1, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    .line 1228
    iget-wide v3, p1, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    iput-wide v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 1229
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->f(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1231
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "t_cr"

    invoke-virtual {v3, v5, p1, v4, v1}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;Z)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-ltz p1, :cond_2

    .line 1233
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v5, p1, v2

    const-string v5, "insert %s success!"

    invoke-static {v5, p1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1234
    iput-wide v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    .line 1237
    :cond_2
    iget-wide v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    .line 1238
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-wide v9, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 1240
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v2

    aput-object v3, v9, v1

    const/4 p1, 0x2

    aput-object v4, v9, p1

    const/4 p1, 0x3

    aput-object v5, v9, p1

    const/4 p1, 0x4

    aput-object v6, v9, p1

    const/4 p1, 0x5

    aput-object v7, v9, p1

    const/4 p1, 0x6

    aput-object v8, v9, p1

    const/4 p1, 0x7

    aput-object v0, v9, p1

    .line 1237
    const-string p1, "saveCrashBean: %d,%s,up=%b,uc=%d,m=%b,mc=%d,mt=%s,et=%d"

    invoke-static {p1, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1241
    sget-boolean p1, Lcom/uqm/crashsight/crashreport/crash/c;->f:Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 6

    .line 2302
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2306
    :cond_0
    const-string v1, "#++++++++++Record By CrashSight++++++++++#"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2307
    const-string v1, "# You can use CrashSight to get more Crash Detail!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2308
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "# PKG NAME: %s"

    invoke-static {v1, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2309
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "# APP VER: %s"

    invoke-static {v1, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2310
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "# SDK VER: %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2311
    new-instance v0, Ljava/util/Date;

    .line 2312
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    iget-wide v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 2311
    const-string v0, "# LAUNCH TIME: %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2313
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "# CRASH TYPE: %s"

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2314
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "# CRASH TIME: %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2315
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p2, p0, v2

    const-string p1, "# CRASH PROCESS: %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2316
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p3, p0, v2

    const-string p1, "# CRASH THREAD: %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p5, :cond_3

    .line 2318
    iget-object p0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "# Processing Event: %s"

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2319
    iget-wide p0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide p1, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 2320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide p2, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    new-array v0, p3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 2319
    const-string p1, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2321
    iget-wide p1, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    .line 2322
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object v0, v1, p0

    .line 2321
    const-string p1, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2323
    iget-object p1, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2324
    iget-object p1, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    iget-object p2, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v3

    const-string p1, "# EXCEPTION FIRED BY %s %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 2326
    :cond_1
    iget p0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne p0, p3, :cond_3

    .line 2327
    iget-object p0, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    if-nez p0, :cond_2

    const-string p0, "null"

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    const-string p2, "CS_CR_01"

    .line 2328
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 2327
    const-string p0, "# EXCEPTION ANR MESSAGE:\n %s"

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2331
    :cond_3
    :goto_1
    invoke-static {p4}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 2332
    const-string p0, "# CRASH STACK: "

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2333
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p4, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2335
    :cond_4
    const-string p0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 1459
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1464
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 1465
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1466
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    invoke-static {v6}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V

    .line 1468
    :cond_1
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1469
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-static {v6}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V

    .line 1471
    :cond_2
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1472
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-static {v6}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V

    .line 1473
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".maps"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V

    .line 1477
    :cond_3
    const-string v4, " or _id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1478
    const-string v4, "deleteCrash: %d,%s"

    iget-wide v6, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1481
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1483
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_5
    move-object v8, p0

    .line 1485
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1486
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result p0

    .line 1488
    const-string v0, "deleted %s data %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v1, v5

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1490
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/crash/a;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1328
    :cond_0
    :try_start_0
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/a;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/a;-><init>()V

    .line 1329
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    .line 1330
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    .line 1331
    const-string v2, "_s1"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/a;->d:Ljava/lang/String;

    .line 1332
    const-string v2, "_up"

    .line 1333
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    .line 1334
    const-string v2, "_me"

    .line 1335
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v1, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    .line 1336
    const-string v2, "_uc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v1, Lcom/uqm/crashsight/crashreport/crash/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 1339
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/crash/a;

    .line 123
    iget-boolean v4, v3, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    if-eqz v4, :cond_1

    iget-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    const-wide/32 v6, 0x5265c00

    sub-long v6, v0, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    .line 125
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    if-eqz v0, :cond_0

    .line 762
    iget v0, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->a(I)I

    move-result v2

    .line 763
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    iget-object v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v5, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-object v6, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/uqm/crashsight/CrashSightStrategy$a;->onCrashHandleStart2NotifyLogUploadResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 2070
    const-string p0, "createZipAttachment sourcePath == null || context == null, pls check"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    .line 2075
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2077
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2079
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2081
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 2082
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2083
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    .line 2084
    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2085
    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2088
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v8

    const-string v9, "%s:%s::%s|"

    invoke-virtual {v8, v7, v9, v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getUuid(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2090
    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2095
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2096
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2097
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2099
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "uuidInfo:\n"

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2102
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    .line 2103
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    const-string v0, "uuidInfo.txt"

    .line 2104
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    .line 2105
    invoke-virtual {p0, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p0

    .line 2106
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2113
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2115
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v3, v1

    .line 2108
    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 2113
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 2115
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-object v1

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_6

    .line 2113
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 2115
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2119
    :cond_6
    :goto_5
    throw p0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 1253
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    const-string v2, "_id in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, ","

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/crash/a;

    .line 1260
    iget-wide v8, v3, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/crash/a;->d:Ljava/lang/String;

    iget-boolean v10, v3, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, v3, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v12, v3, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v7

    aput-object v9, v13, v5

    aput-object v10, v13, v4

    const/4 v4, 0x3

    aput-object v11, v13, v4

    const/4 v4, 0x4

    aput-object v12, v13, v4

    const-string v4, "loadCrash: %d,%s,up=%b,uc=%d,m=%b"

    invoke-static {v4, v13}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1261
    iget-wide v3, v3, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1266
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1269
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1272
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v8

    const-string v9, "t_cr"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_4

    if-eqz v3, :cond_3

    .line 1312
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    .line 1278
    :cond_4
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    const-string v9, "_id in "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 1281
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1282
    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1284
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1288
    :cond_5
    :try_start_2
    const-string v10, "_id"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1289
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1292
    :catchall_0
    :try_start_3
    const-string v10, "unknown id!"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 1296
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1297
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    .line 1299
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-lez v9, :cond_8

    .line 1303
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v10

    const-string v11, "t_cr"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result v0

    .line 1305
    const-string v2, "deleted %s illegal data %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "t_cr"

    aput-object v6, v4, v7

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    if-eqz v3, :cond_9

    .line 1312
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v8

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v1

    .line 1309
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_a

    .line 1312
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1314
    :cond_b
    throw v1

    :cond_c
    :goto_3
    return-object v1
.end method

.method private d()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .line 1349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1351
    :try_start_0
    const-string v3, "_id"

    const-string v4, "_tm"

    const-string v5, "_s1"

    const-string v6, "_up"

    const-string v7, "_me"

    const-string v8, "_uc"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    .line 1353
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v9

    const-string v10, "t_cr"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    .line 1396
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 1358
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v0, :cond_3

    if-eqz v3, :cond_2

    .line 1396
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    .line 1361
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    const-string v2, "_id in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1364
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, ","

    if-eqz v5, :cond_5

    .line 1365
    :try_start_3
    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/crash/a;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1367
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1371
    :cond_4
    :try_start_4
    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1372
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1375
    :catchall_0
    :try_start_5
    const-string v5, "unknown id!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 1382
    :cond_6
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v4, :cond_7

    .line 1387
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result v0

    .line 1389
    const-string v4, "deleted %s illegal data %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "t_cr"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    if-eqz v3, :cond_8

    .line 1396
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 1393
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_9

    .line 1396
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1398
    :cond_a
    throw v1
.end method

.method private static d(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1407
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1412
    const-string v1, "_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, ","

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/crash/a;

    .line 1414
    iget-wide v6, v1, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    iget-wide v6, v1, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/crash/a;->d:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, v1, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v1, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v6, v9, v3

    aput-object v7, v9, v2

    const/4 v2, 0x3

    aput-object v8, v9, v2

    const/4 v2, 0x4

    aput-object v1, v9, v2

    const-string v1, "deleteCrash: %d,%s,up=%b,uc=%d,m=%b"

    invoke-static {v1, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1417
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1418
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1420
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1422
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result p0

    .line 1424
    const-string v0, "deleted %s data %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "t_cr"

    aput-object v2, v1, v5

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1426
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 1499
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1503
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 1504
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1505
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 1509
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static f(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1148
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1149
    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 1150
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1152
    :cond_1
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    const-string v2, "_s1"

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v2, "_up"

    iget-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1155
    const-string v2, "_me"

    iget-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    const-string v2, "_uc"

    iget v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    const-string v2, "_dt"

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 1160
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized g(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Z
    .locals 11

    monitor-enter p0

    .line 2419
    :try_start_0
    iget-object v0, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2420
    const-string v0, "[Merge] removeMergedError %s stack hash is null"

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    monitor-exit p0

    return v2

    .line 2423
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/crash/a;

    if-nez v0, :cond_1

    .line 2425
    const-string v0, "[Merge] %s is not in MergedCrashMap."

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2426
    monitor-exit p0

    return v2

    .line 2428
    :cond_1
    :try_start_2
    const-string v3, "[Merge] removeMergedError,id=%d,et=%s,mt=%s,mgMt=%s,mc=%d,mgMc=%d"

    iget-wide v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    .line 2429
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v7, v0, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    iget v8, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v2

    aput-object v5, v10, v1

    const/4 v4, 0x2

    aput-object v6, v10, v4

    const/4 v4, 0x3

    aput-object v7, v10, v4

    const/4 v4, 0x4

    aput-object v8, v10, v4

    const/4 v4, 0x5

    aput-object v9, v10, v4

    .line 2428
    invoke-static {v3, v10}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2430
    iget v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    iget v4, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    if-lt v3, v4, :cond_2

    .line 2431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2432
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2433
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;)V

    goto :goto_1

    .line 2460
    :cond_2
    iget v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    iget v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    .line 2461
    iget v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    .line 2462
    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    .line 2464
    iget-wide v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    iput-wide v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 2465
    iget v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    iput v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    .line 2466
    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    iput-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 2467
    iget-boolean v0, v0, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    iput-boolean v0, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    .line 2468
    iput-boolean v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    .line 2470
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2472
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .line 323
    const-string v0, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    const-string v1, "have not synced remote!"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 325
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 326
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    .line 330
    :cond_0
    iget-boolean v1, v3, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v1, :cond_1

    .line 331
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    const-string v1, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 337
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    .line 343
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    invoke-static {}, Lcom/uqm/crashsight/proguard/v;->a()J

    move-result-wide v5

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/crashreport/crash/b;->d()Ljava/util/List;

    move-result-object v3

    .line 347
    const-string v7, "Size of crash list loaded from DB: %s"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-static {v7, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2

    return-object v2

    .line 353
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    invoke-interface {v3, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 357
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 358
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 359
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/crashreport/crash/a;

    .line 360
    iget-wide v11, v10, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    sget-wide v13, Lcom/uqm/crashsight/crashreport/crash/c;->d:J

    sub-long v13, v5, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_4

    .line 362
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 363
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    :cond_4
    iget-boolean v11, v10, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    const-wide/32 v12, 0x5265c00

    if-eqz v11, :cond_6

    .line 368
    iget-wide v14, v10, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    sub-long v11, v0, v12

    cmp-long v13, v14, v11

    if-ltz v13, :cond_5

    .line 370
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    :cond_5
    iget-boolean v11, v10, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    if-nez v11, :cond_3

    .line 374
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 375
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_6
    iget v11, v10, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    int-to-long v14, v11

    const-wide/16 v16, 0x3

    cmp-long v11, v14, v16

    if-ltz v11, :cond_3

    iget-wide v14, v10, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    sub-long v11, v0, v12

    cmp-long v13, v14, v11

    if-gez v13, :cond_3

    .line 380
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 381
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 386
    invoke-static {v7}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Ljava/util/List;)V

    .line 390
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_9

    .line 392
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v3, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 394
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Ljava/util/List;)V

    .line 398
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    .line 403
    :try_start_1
    invoke-direct {v3, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 405
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v5

    iget-object v5, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v6

    iget-wide v6, v6, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 408
    :cond_a
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 409
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 410
    iget-wide v11, v10, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    cmp-long v13, v11, v6

    if-lez v13, :cond_b

    .line 411
    const-string v11, "[ExceptionTime]%d > [LaunchTime]%d"

    iget-wide v12, v10, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v10, v13, v4

    aput-object v12, v13, v9

    invoke-static {v11, v13}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 415
    :cond_b
    iget-object v11, v10, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 416
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 417
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 422
    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    .line 427
    :goto_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 2530
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->l:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2531
    monitor-exit p0

    return-void

    .line 2534
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/b$8;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/b$8;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/b;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->l:Ljava/lang/Thread;

    .line 2556
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V
    .locals 10

    .line 735
    new-instance v3, Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-direct {v3, p1}, Lcom/uqm/crashsight/crashreport/common/info/b;-><init>(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V

    .line 736
    iget-boolean p1, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 737
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[attach] attachBean invalid"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 741
    :cond_0
    new-instance v6, Lcom/uqm/crashsight/crashreport/crash/b$5;

    invoke-direct {v6, p0, v3}, Lcom/uqm/crashsight/crashreport/crash/b$5;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 754
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v1, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    iget-object v4, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget-object v5, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->v:Lcom/uqm/crashsight/proguard/z$a;

    .line 756
    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const/16 v2, 0x366

    .line 754
    invoke-virtual/range {v0 .. v9}, Lcom/uqm/crashsight/proguard/l;->a(IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;JZ)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V
    .locals 1

    .line 475
    sget-boolean p2, Lcom/uqm/crashsight/crashreport/crash/c;->i:Z

    if-eqz p2, :cond_1

    .line 476
    const-string p2, "try to upload right now"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 477
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p2, p4, p3, p4}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;ZZZ)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .line 656
    new-instance v10, Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-direct {v10, p1}, Lcom/uqm/crashsight/crashreport/common/info/b;-><init>(Ljava/lang/String;)V

    .line 657
    iget-boolean v0, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 658
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[attach] attachBean invalid"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 662
    :cond_0
    new-instance v6, Lcom/uqm/crashsight/crashreport/crash/b$3;

    invoke-direct {v6, p0, v10, p1}, Lcom/uqm/crashsight/crashreport/crash/b$3;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v1, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    iget-object v4, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget-object v5, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->v:Lcom/uqm/crashsight/proguard/z$a;

    .line 684
    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const/16 v2, 0x366

    move-object v3, v10

    .line 682
    invoke-virtual/range {v0 .. v9}, Lcom/uqm/crashsight/proguard/l;->a(IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;JZ)V

    .line 686
    iget-object p1, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 694
    invoke-static {p4}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 695
    const-string p1, "[attach][single] attachment path is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 698
    :cond_0
    new-instance v3, Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/uqm/crashsight/crashreport/common/info/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 702
    const-string p1, "[attach][single] copyZipAttachFile failed"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 705
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[attach][single] copy and zip success:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 707
    iget-boolean p1, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    if-nez p1, :cond_2

    .line 708
    const-string p1, "[attach][single] attachBean invalid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 709
    iget-object p1, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/4 p2, 0x3

    const-string p3, "attachBean invalid"

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    return-void

    .line 713
    :cond_2
    new-instance v6, Lcom/uqm/crashsight/crashreport/crash/b$4;

    invoke-direct {v6, p0, v3}, Lcom/uqm/crashsight/crashreport/crash/b$4;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 725
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v1, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    iget-object v4, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget-object v5, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    sget-object p1, Lcom/uqm/crashsight/proguard/z;->v:Lcom/uqm/crashsight/proguard/z$a;

    .line 726
    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const/16 v2, 0x366

    .line 725
    invoke-virtual/range {v0 .. v9}, Lcom/uqm/crashsight/proguard/l;->a(IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;JZ)V

    return-void
.end method

.method public final a(Ljava/util/List;ZZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;ZZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 496
    const-string v2, "/error"

    const-string v3, "/crash"

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v4

    iget-boolean v4, v4, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    if-nez v4, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    if-nez v4, :cond_1

    return-void

    .line 504
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    .line 508
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 509
    iget v7, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v5, :cond_4

    .line 510
    iget v8, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v9, 0xd

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 511
    iget v9, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v10, 0xe

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 513
    iget-object v10, v1, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v11, Lcom/uqm/crashsight/crashreport/crash/c;->a:I

    sget-object v12, Lcom/uqm/crashsight/proguard/z;->H:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/uqm/crashsight/proguard/l;->a(II)Z

    move-result v10

    if-nez v10, :cond_6

    return-void

    :cond_6
    if-nez p4, :cond_7

    .line 517
    iget-object v10, v1, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v11, Lcom/uqm/crashsight/crashreport/crash/c;->a:I

    invoke-virtual {v10, v11}, Lcom/uqm/crashsight/proguard/l;->b(I)Z

    move-result v10

    if-nez v10, :cond_7

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    return-void

    .line 521
    :cond_7
    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/crash/b;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v7}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v7

    .line 522
    iget-boolean v8, v7, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v8, :cond_8

    .line 523
    const-string v0, "remote report is disable!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 524
    const-string v0, "[crash] server closed crashSight in this app. please check your appid if is correct, and re-install it"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 530
    :cond_8
    :try_start_0
    iget-object v7, v7, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 531
    sget-object v8, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 532
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_b

    .line 534
    iget v9, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "type"

    if-eqz v9, :cond_a

    :try_start_1
    iget v5, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v5, v6, :cond_9

    goto :goto_3

    .line 539
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 541
    const-string v2, "error"

    invoke-interface {v15, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 535
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 537
    const-string v2, "crash"

    invoke-interface {v15, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    move-object v12, v7

    move-object v13, v8

    .line 545
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    .line 546
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/uqm/crashsight/crashreport/common/info/a;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;

    move-result-object v2

    if-nez v2, :cond_c

    .line 548
    const-string v0, "create eupPkg fail!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 551
    :cond_c
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadPackage;->toByteArray()[B

    move-result-object v2

    if-nez v2, :cond_d

    .line 553
    const-string v0, "send encode fail!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 556
    :cond_d
    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    const/16 v5, 0x33e

    invoke-static {v3, v5, v2}, Lcom/uqm/crashsight/proguard/h;->a(Landroid/content/Context;I[B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v11

    if-nez v11, :cond_e

    .line 558
    const-string v0, "request package is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 561
    :cond_e
    new-instance v14, Lcom/uqm/crashsight/crashreport/crash/b$1;

    invoke-direct {v14, v1, v0}, Lcom/uqm/crashsight/crashreport/crash/b$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Ljava/util/List;)V

    if-eqz p2, :cond_f

    .line 575
    iget-object v9, v1, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v10, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    sget-object v0, Lcom/uqm/crashsight/proguard/z;->v:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    move-object v0, v15

    move-wide v15, v2

    move/from16 v17, p3

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v18}, Lcom/uqm/crashsight/proguard/l;->a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;JZLjava/util/Map;)V

    goto :goto_5

    :cond_f
    move-object v0, v15

    .line 578
    iget-object v9, v1, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v10, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lcom/uqm/crashsight/proguard/l;->a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "req cr error %s"

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 582
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public final a(ZLjava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    .line 776
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 777
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 779
    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    add-int/2addr v10, v4

    iput v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    .line 780
    iput-boolean v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    .line 781
    iget-object v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iget v11, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v12, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    .line 782
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget v14, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v2

    aput-object v11, v8, v4

    const/4 v10, 0x2

    aput-object v12, v8, v10

    aput-object v13, v8, v9

    aput-object v14, v8, v7

    .line 781
    const-string v7, "[uploadFinished]REPORT ID(expUid):%s uc:%d re:%b me:%b mc:%d"

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 784
    sget-object v7, Lcom/uqm/crashsight/proguard/z;->J:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v7}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {v0, v6}, Lcom/uqm/crashsight/crashreport/crash/b;->g(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 787
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {v0, v6}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    goto :goto_0

    .line 792
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;)V

    .line 794
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 795
    iget-boolean v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    if-nez v10, :cond_4

    iget-boolean v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:Z

    if-nez v10, :cond_4

    .line 799
    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const-string v11, "|"

    const/16 v12, 0x11

    const-string v13, "[attach][uploadFinished] attachment path is empty"

    if-eqz v10, :cond_f

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eq v10, v4, :cond_f

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne v10, v9, :cond_5

    goto/16 :goto_5

    .line 824
    :cond_5
    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eq v10, v7, :cond_8

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eq v10, v8, :cond_8

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 v14, 0x6

    if-eq v10, v14, :cond_8

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v14, 0x8

    if-eq v10, v14, :cond_8

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 826
    invoke-static {v10}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result v10

    if-nez v10, :cond_8

    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v14, 0xe

    if-ne v10, v14, :cond_6

    goto :goto_2

    .line 850
    :cond_6
    iget v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_4

    .line 851
    sget-object v10, Lcom/uqm/crashsight/proguard/z;->an:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v10}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    .line 852
    const-string v6, "[attach][uploadFinished] IS_ENABLE_OOM_UPLOAD_ATTACHMENT is false"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v6, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 855
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v10

    .line 856
    invoke-virtual {v10}, Lcom/uqm/crashsight/crashreport/common/info/c;->d()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9

    .line 827
    :cond_8
    :goto_2
    sget-object v10, Lcom/uqm/crashsight/proguard/z;->Z:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v10}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_9

    .line 828
    const-string v6, "[attach][uploadFinished] IS_ENABLE_ERROR_UPLOAD_ATTACHMENT is false"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v6, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 831
    :cond_9
    iget-object v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->af:Ljava/lang/String;

    .line 833
    iget-object v14, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    if-eqz v14, :cond_c

    iget-object v14, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    if-eqz v10, :cond_b

    .line 834
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_3

    .line 837
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 835
    :cond_b
    :goto_3
    iget-object v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 840
    :cond_c
    :goto_4
    invoke-static {v10}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 841
    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v13, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 842
    invoke-direct {v0, v6, v12}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    goto/16 :goto_1

    .line 845
    :cond_d
    sget-boolean v11, Lcom/uqm/crashsight/b;->c:Z

    if-nez v11, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v7, v0, Lcom/uqm/crashsight/crashreport/crash/b;->k:J

    sub-long/2addr v14, v7

    sget-object v7, Lcom/uqm/crashsight/proguard/z;->aa:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v7}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v16, 0x3e8

    mul-long v7, v7, v16

    cmp-long v11, v14, v7

    if-gez v11, :cond_e

    .line 846
    const-string v6, "[attach][uploadFinished] error attachment upload too frequent! skip!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 849
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/uqm/crashsight/crashreport/crash/b;->k:J

    goto/16 :goto_9

    .line 800
    :cond_f
    :goto_5
    sget-object v7, Lcom/uqm/crashsight/proguard/z;->t:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v7}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_10

    .line 801
    const-string v6, "[attach][uploadFinished] IS_ENABLE_CRASH_UPLOAD_ATTACHMENT is false"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    const/4 v7, 0x4

    const/4 v8, 0x5

    goto/16 :goto_1

    .line 804
    :cond_10
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v7

    .line 806
    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    if-eqz v8, :cond_11

    .line 807
    iget v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v8}, Lcom/uqm/crashsight/crashreport/crash/b;->a(I)I

    move-result v8

    .line 808
    iget-object v10, v0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    iget-object v14, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v15, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v10, v8, v14, v15, v4}, Lcom/uqm/crashsight/CrashSightStrategy$a;->onCrashHandleStart2GetLogPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 811
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadFinished] attachment path from callback:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 812
    invoke-virtual {v7, v4}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/lang/String;)V

    .line 815
    :cond_11
    invoke-virtual {v7}, Lcom/uqm/crashsight/crashreport/common/info/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 817
    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    if-eqz v7, :cond_14

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    if-eqz v4, :cond_13

    .line 818
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    .line 821
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 819
    :cond_13
    :goto_7
    iget-object v10, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    goto :goto_9

    :cond_14
    :goto_8
    move-object v10, v4

    .line 861
    :goto_9
    invoke-static {v10}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 862
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v13, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 863
    invoke-direct {v0, v6, v12}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    :goto_a
    const/4 v4, 0x1

    goto :goto_6

    .line 866
    :cond_15
    new-instance v4, Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-direct {v4, v7, v10}, Lcom/uqm/crashsight/crashreport/common/info/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;

    move-result-object v7

    .line 869
    invoke-static {v7}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 870
    const-string v7, "[attach][uploadFinished] copyZipAttachFile failed"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 871
    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v4, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-direct {v0, v6, v4}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    goto :goto_a

    .line 874
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[attach][uploadFinished] copy and zip success:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 876
    iget-boolean v7, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Z

    if-nez v7, :cond_17

    .line 877
    const-string v7, "[attach][uploadFinished] attachBean invalid"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 878
    iget-object v7, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v8, "attachBean invalid"

    invoke-virtual {v7, v9, v8}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    .line 879
    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v4, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-direct {v0, v6, v4}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)V

    goto :goto_a

    .line 883
    :cond_17
    new-instance v7, Lcom/uqm/crashsight/crashreport/crash/b$6;

    invoke-direct {v7, v0, v4, v6}, Lcom/uqm/crashsight/crashreport/crash/b$6;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 899
    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v18, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    iget-object v10, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget-object v11, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    sget-object v12, Lcom/uqm/crashsight/proguard/z;->v:Lcom/uqm/crashsight/proguard/z$a;

    .line 900
    invoke-virtual {v12}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    iget v6, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 v14, 0x7

    if-ne v6, v14, :cond_18

    const/16 v26, 0x1

    goto :goto_b

    :cond_18
    const/16 v26, 0x0

    :goto_b
    const/16 v19, 0x366

    move-object/from16 v17, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v7

    move-wide/from16 v24, v12

    .line 899
    invoke-virtual/range {v17 .. v26}, Lcom/uqm/crashsight/proguard/l;->a(IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;JZ)V

    goto/16 :goto_a

    .line 904
    :cond_19
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v3}, Lcom/uqm/crashsight/crashreport/crash/b;->e(Ljava/util/List;)V

    .line 905
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "update state size %d"

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1a
    if-nez v1, :cond_1b

    .line 908
    const-string v1, "[crash] upload fail."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final a([BJZZZ)V
    .locals 8

    .line 596
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p2

    iget-boolean p2, p2, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    if-nez p2, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    if-nez p2, :cond_1

    return-void

    .line 603
    :cond_1
    sget p3, Lcom/uqm/crashsight/crashreport/crash/c;->a:I

    invoke-virtual {p2, p3}, Lcom/uqm/crashsight/proguard/l;->b(I)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 607
    :cond_2
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p2

    .line 608
    iget-boolean p3, p2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    const/4 p4, 0x0

    if-nez p3, :cond_3

    .line 609
    const-string p1, "remote report is disable!"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 610
    const-string p1, "[crash] server closed crashSight in this app. please check your appid if is correct, and re-install it"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    if-eqz p1, :cond_6

    .line 614
    array-length p3, p1

    if-nez p3, :cond_4

    goto :goto_0

    .line 618
    :cond_4
    :try_start_0
    iget-object v3, p2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 619
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 622
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->d:Landroid/content/Context;

    const/16 p3, 0x352

    invoke-static {p2, p3, p1}, Lcom/uqm/crashsight/proguard/h;->a(Landroid/content/Context;I[B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v2

    if-nez v2, :cond_5

    .line 625
    const-string p1, "request package is null."

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 628
    :cond_5
    new-instance v5, Lcom/uqm/crashsight/crashreport/crash/b$2;

    invoke-direct {v5, p0}, Lcom/uqm/crashsight/crashreport/crash/b$2;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;)V

    .line 643
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->e:Lcom/uqm/crashsight/proguard/l;

    sget v1, Lcom/uqm/crashsight/crashreport/crash/b;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/uqm/crashsight/proguard/l;->a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 646
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "req cr error %s"

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 647
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "siCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->Q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/uqm/crashsight/proguard/z;->Q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 226
    iget-object p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->Q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v2, "This crash contains the filter string set. It will not be record and upload."

    if-eqz p2, :cond_1

    .line 227
    const-string p1, "This exceptionStack contains the filter string set. It will not be record and upload."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 232
    :cond_1
    iget-object p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    sget-object v3, Lcom/uqm/crashsight/proguard/z;->Q:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 233
    const-string p1, "This exceptionMsg contains the filter string set. It will not be record and upload."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 235
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 239
    :cond_2
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->R:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/uqm/crashsight/proguard/z;->R:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 240
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->R:Lcom/uqm/crashsight/proguard/z$a;

    .line 241
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 240
    const-string p2, "Crash regular filter for crash stack is: %s"

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 242
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->R:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 243
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 244
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "This crash matches the regular filter string set. It will not be record and upload."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 246
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 253
    :cond_3
    iget p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eqz p2, :cond_6

    iget p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 265
    :cond_4
    iget p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 266
    new-instance p2, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {p2}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    const/4 v2, 0x4

    .line 267
    iput v2, p2, Lcom/uqm/crashsight/proguard/h;->b:I

    .line 268
    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    iput-object v3, p2, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    .line 269
    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    iput-object v3, p2, Lcom/uqm/crashsight/proguard/h;->d:Ljava/lang/String;

    .line 270
    iget-wide v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    iput-wide v3, p2, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 271
    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p2, Lcom/uqm/crashsight/proguard/h;->g:[B

    .line 273
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->f:Lcom/uqm/crashsight/proguard/d;

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/proguard/d;->b(I)V

    .line 274
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->f:Lcom/uqm/crashsight/proguard/d;

    invoke-virtual {v2, p2}, Lcom/uqm/crashsight/proguard/d;->a(Lcom/uqm/crashsight/proguard/h;)Z

    .line 275
    const-string p2, "[crash] an ANR occur, handling..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_5
    const-string p2, "[crash] a caught exception occur, handling..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_6
    :goto_0
    new-instance p2, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {p2}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    .line 256
    iput v0, p2, Lcom/uqm/crashsight/proguard/h;->b:I

    .line 257
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    .line 258
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/proguard/h;->d:Ljava/lang/String;

    .line 259
    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    iput-wide v2, p2, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 260
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p2, Lcom/uqm/crashsight/proguard/h;->g:[B

    .line 262
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->f:Lcom/uqm/crashsight/proguard/d;

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/proguard/d;->b(I)V

    .line 263
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->f:Lcom/uqm/crashsight/proguard/d;

    invoke-virtual {v2, p2}, Lcom/uqm/crashsight/proguard/d;->a(Lcom/uqm/crashsight/proguard/h;)Z

    .line 264
    const-string p2, "[crash] a crash occur, handling..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 280
    :goto_1
    iget p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/crash/c;->d(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 281
    iget-object p2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 282
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/crash/a;

    if-eqz p2, :cond_b

    .line 284
    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    :try_start_0
    iget-wide v2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REPORT ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " merged"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object p1, p2, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 291
    :cond_7
    :try_start_1
    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    iput-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 292
    iget v2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    iput v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    .line 293
    iget v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    .line 294
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 295
    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_9

    .line 296
    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    .line 297
    iput-boolean v1, p2, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    iget-object p1, p2, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_9
    iget-object p1, p2, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object p2, p2, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    throw p1

    .line 310
    :cond_a
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 312
    :cond_b
    const-string p1, "[crash] save crash success"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method public final declared-synchronized b()V
    .locals 13

    monitor-enter p0

    .line 2476
    :try_start_0
    const-string v0, "[Merge] mergeMapNeedFlush=%b, size=%d"

    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2477
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z

    if-eqz v0, :cond_4

    .line 2479
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->O:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2481
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2482
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uqm/crashsight/crashreport/crash/a;

    if-nez v9, :cond_0

    .line 2484
    const-string v9, "[Merge] flushMergedMap, crash is null[%s]"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v5

    invoke-static {v9, v10}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 2487
    :cond_0
    iget-boolean v8, v9, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    if-eqz v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-gt v4, v0, :cond_2

    .line 2492
    invoke-direct {p0, v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/a;)V

    .line 2493
    const-string v8, "[Merge] flushMergedMap id=%d,stack=%s"

    iget-wide v10, v9, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v9, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v10, v12, v5

    aput-object v11, v12, v1

    invoke-static {v8, v12}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2494
    iput-boolean v5, v9, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    .line 2495
    iput-wide v6, v9, Lcom/uqm/crashsight/crashreport/crash/a;->k:J

    goto :goto_0

    .line 2497
    :cond_1
    const-string v8, "[Merge] flushMergedMap, needFlush=false, stack=%s"

    iget-object v9, v9, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v5

    invoke-static {v8, v10}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-le v4, v0, :cond_3

    .line 2501
    monitor-exit p0

    return-void

    .line 2503
    :cond_3
    :try_start_1
    iput-boolean v5, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 3

    .line 950
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->S:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 952
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/b$7;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b$7;-><init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 962
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 964
    :try_start_0
    sget-object p1, Lcom/uqm/crashsight/proguard/z;->S:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 966
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 968
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 969
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x0

    .line 970
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[crash callback] handleUserCallbackInThread() timeout! Try to interrupt."

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 974
    :cond_2
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 13

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2357
    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 2358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2360
    const-string p1, "[Merge] Do not upload this error, as stack hash is null."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    monitor-exit p0

    return v1

    .line 2363
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/crash/a;

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    .line 2365
    iget-object p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2367
    :try_start_2
    iget p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    add-int/2addr p1, v1

    iput p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    .line 2369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->j:Ljava/lang/String;

    .line 2370
    iput-boolean v1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    .line 2371
    iget-wide v5, v3, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    const-wide/16 v7, 0x0

    const/4 p1, 0x4

    const/4 v0, 0x3

    const/4 v9, 0x5

    cmp-long v10, v5, v7

    if-lez v10, :cond_4

    .line 2373
    sget-object v5, Lcom/uqm/crashsight/proguard/z;->N:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v5}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v5, Lcom/uqm/crashsight/proguard/z;->P:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v5}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    .line 2374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2375
    iget-wide v7, v3, Lcom/uqm/crashsight/crashreport/crash/a;->k:J

    sub-long v7, v5, v7

    sget-object v10, Lcom/uqm/crashsight/proguard/z;->P:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v10}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    cmp-long v12, v7, v10

    if-ltz v12, :cond_3

    .line 2376
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/a;)V

    .line 2377
    iput-wide v5, v3, Lcom/uqm/crashsight/crashreport/crash/a;->k:J

    .line 2378
    iput-boolean v2, v3, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    goto :goto_1

    .line 2381
    :cond_2
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/a;)V

    .line 2382
    iput-boolean v2, v3, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    .line 2384
    :cond_3
    :goto_1
    const-string v5, "[Merge]Error merged"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2385
    const-string v5, "[Merge] Do not upload this error after it was merged,stack=%s,up=%b,uc=%d,me=%b,mc=%d"

    iget-object v6, v3, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    iget-boolean v7, v3, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    .line 2386
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, v3, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v10, v3, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, v3, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v7, v9, v1

    aput-object v8, v9, v4

    aput-object v10, v9, v0

    aput-object v11, v9, p1

    .line 2385
    invoke-static {v5, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2394
    :try_start_3
    iget-object p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2387
    monitor-exit p0

    return v1

    .line 2389
    :cond_4
    :try_start_4
    const-string v5, "[Merge] Will upload this error,as it has not been saved to db,stack=%s,up=%b,uc=%d,me=%b,mc=%d"

    iget-object v6, v3, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    iget-boolean v7, v3, Lcom/uqm/crashsight/crashreport/crash/a;->e:Z

    .line 2390
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, v3, Lcom/uqm/crashsight/crashreport/crash/a;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v10, v3, Lcom/uqm/crashsight/crashreport/crash/a;->f:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, v3, Lcom/uqm/crashsight/crashreport/crash/a;->i:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v7, v9, v1

    aput-object v8, v9, v4

    aput-object v10, v9, v0

    aput-object v11, v9, p1

    .line 2389
    invoke-static {v5, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2394
    :try_start_5
    iget-object p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2391
    monitor-exit p0

    return v2

    :catchall_1
    move-exception p1

    .line 2394
    :try_start_6
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/crash/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2395
    throw p1

    .line 2397
    :cond_5
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    sget-object v5, Lcom/uqm/crashsight/proguard/z;->L:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v5}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v3, v5, :cond_6

    .line 2398
    const-string p1, "[Merge] Do not upload this error, mergedCrashMap size[%d] > max[%d]."

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v2

    sget-object v0, Lcom/uqm/crashsight/proguard/z;->L:Lcom/uqm/crashsight/proguard/z$a;

    aput-object v0, v3, v1

    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2399
    monitor-exit p0

    return v1

    .line 2401
    :cond_6
    :try_start_7
    new-instance v3, Lcom/uqm/crashsight/crashreport/crash/a;

    invoke-direct {v3}, Lcom/uqm/crashsight/crashreport/crash/a;-><init>()V

    const-wide/16 v4, -0x1

    .line 2402
    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/a;->b:J

    .line 2403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/uqm/crashsight/crashreport/crash/a;->c:J

    .line 2404
    iput-object v0, v3, Lcom/uqm/crashsight/crashreport/crash/a;->d:Ljava/lang/String;

    .line 2405
    iput-boolean v1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->l:Z

    .line 2406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    .line 2407
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->i:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    iget-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z

    if-nez p1, :cond_7

    .line 2409
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z

    .line 2410
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2412
    :cond_7
    const-string p1, "[Merge] Will upload this error, as it is first uploaded[%s]"

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/crash/a;->h:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2415
    monitor-exit p0

    return v2

    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2508
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 989
    :try_start_0
    iget v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    const-string v3, "callback is closed, callback type is [%d]"

    packed-switch v2, :pswitch_data_0

    .line 1027
    :try_start_1
    iget v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1028
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->x()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1029
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 1018
    :pswitch_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->w()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1019
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 1012
    :pswitch_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->v()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1013
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 1006
    :pswitch_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->u()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1007
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 992
    :pswitch_3
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->t()Z

    move-result v2

    if-nez v2, :cond_3

    .line 993
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 1000
    :pswitch_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->s()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1001
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/crash/c;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 1038
    :cond_3
    iget v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(I)I

    move-result v2

    .line 1048
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1050
    const-string v3, "[Start]Calling \'onCrashHandleStart\' of CrashSight crash listener."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1051
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    iget-object v5, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-object v7, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v6, v7}, Lcom/uqm/crashsight/CrashSightStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1053
    const-string v5, "[End]Calling \'onCrashHandleStart\' of CrashSight crash listener."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    const/4 v5, 0x2

    const/high16 v6, 0x20000

    if-eqz v3, :cond_8

    .line 1057
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 1060
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v7, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    .line 1062
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1063
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1066
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1084
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1085
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v7, v10

    if-le v7, v6, :cond_7

    .line 1087
    const-string v3, "set %s value length is over limit %d substring"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v9, v8, v1

    aput-object v7, v8, v0

    invoke-static {v3, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 1090
    :cond_7
    iget-object v10, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1095
    :cond_8
    :goto_3
    const-string v3, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1100
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    if-eqz v3, :cond_9

    .line 1101
    const-string v3, "Calling \'onCrashHandleStart2GetExtraDatas\' of CrashSight crash listener."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1102
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/b;->a:Lcom/uqm/crashsight/CrashSightStrategy$a;

    iget-object v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v7, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iget-object v8, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v7, v8}, Lcom/uqm/crashsight/CrashSightStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 1105
    :cond_9
    iput-object v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Z:[B

    if-eqz v4, :cond_b

    .line 1107
    array-length v2, v4

    if-le v2, v6, :cond_a

    .line 1108
    const-string v2, "extra bytes size %d is over limit %d will drop over part"

    array-length v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v7, v5, v0

    .line 1108
    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1110
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Z:[B

    .line 1112
    :cond_a
    const-string p1, "add extra bytes %d "

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 1129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v2, "crash handle callback something wrong! %s"

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1130
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1133
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1196
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/b;->f(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1198
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "t_cr"

    invoke-virtual {v3, v5, v0, v4, v2}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;Z)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-ltz v0, :cond_1

    .line 1200
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v5, "insert %s success!"

    invoke-static {v5, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1201
    iput-wide v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    .line 1204
    :cond_1
    iget-wide v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    .line 1205
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-wide v9, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v1

    aput-object v3, v9, v2

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v5, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v7, v9, v0

    const/4 v0, 0x6

    aput-object v8, v9, v0

    const/4 v0, 0x7

    aput-object p1, v9, v0

    .line 1204
    const-string p1, "saveCrash: %d,%s,up=%b,uc=%d,m=%b,mc=%d,mt=%s,et=%d"

    invoke-static {p1, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1206
    sget-boolean p1, Lcom/uqm/crashsight/crashreport/crash/c;->f:Z

    return-void
.end method

.method public final e(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 2512
    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b;->j:Ljava/lang/String;

    .line 2513
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set uuid:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
