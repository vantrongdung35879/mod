.class public Lcom/uqm/crashsight/proguard/i;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static b:Lcom/uqm/crashsight/proguard/i; = null

.field private static synthetic d:Z = true


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/i;->a:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/i;
    .locals 1

    .line 80
    sget-object v0, Lcom/uqm/crashsight/proguard/i;->b:Lcom/uqm/crashsight/proguard/i;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/uqm/crashsight/proguard/i;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/proguard/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/i;->b:Lcom/uqm/crashsight/proguard/i;

    .line 83
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/i;->b:Lcom/uqm/crashsight/proguard/i;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 788
    const-string v2, "Host"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/i;->a()V

    move-object/from16 v4, p3

    .line 789
    invoke-static {v4, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 791
    const-string v0, "[attach][UploadIdPost] Failed to get HttpURLConnection object."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v3

    .line 795
    :cond_0
    const-string v9, "POST"

    .line 796
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 797
    iget v6, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "Authorization"

    if-nez v6, :cond_1

    .line 798
    :try_start_1
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "x-cos-security-token"

    iget-object v5, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "x-cos-storage-class"

    const-string v5, "STANDARD_IA"

    invoke-virtual {v4, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-static {v4, v1}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 805
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 806
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 807
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v5, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v10, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v12, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v14, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-static/range {v5 .. v14}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {v4, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 812
    :cond_1
    iget v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    new-array v2, v5, [B

    .line 815
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 816
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 817
    invoke-static {v2}, Lcom/uqm/crashsight/CrashSightStrategy$a;->toHex([B)Ljava/lang/String;

    move-result-object v2

    .line 819
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 820
    const-string v6, "x-amz-content-sha256"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v6, "content-length"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v6, "x-amz-storage-class"

    const-string v7, "REDUCED_REDUNDANCY"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v6, "X-Amz-Security-Token"

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v6, "x-amz-server-side-encryption-customer-algorithm"

    const-string v7, "AES256"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v6, "x-amz-server-side-encryption-customer-key"

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v6, "x-amz-server-side-encryption-customer-key-MD5"

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v6, Lcom/uqm/crashsight/proguard/g;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "s3"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v9, v0, v8}, Lcom/uqm/crashsight/proguard/g;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 831
    const-string v7, "uploads"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-wide v9, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v22, v9

    invoke-virtual/range {v16 .. v23}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-interface {v5, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 840
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x2710

    .line 844
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    .line 847
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private a(Ljava/lang/String;Ljava/io/File;JJLjava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/net/HttpURLConnection;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    .line 618
    const-string v2, "Content-MD5"

    const-string v3, "Host"

    const-string v4, "PUT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 619
    const-string v0, "[attach][uploadPut] destUrl is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5

    .line 622
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/i;->a()V

    move-object/from16 v7, p7

    .line 623
    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    if-nez v7, :cond_1

    .line 625
    const-string v0, "[attach][uploadPut] Failed to get HttpURLConnection object."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5

    .line 629
    :cond_1
    :try_start_0
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 630
    iget v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "Authorization"

    if-nez v8, :cond_2

    .line 631
    :try_start_1
    invoke-static/range {p2 .. p6}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v7, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v4, "Content-Length"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v4, "x-cos-security-token"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v4, "x-cos-storage-class"

    const-string v8, "STANDARD_IA"

    invoke-virtual {v7, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {v7, v1}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 640
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 641
    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v10, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long v14, v2, v10

    const-wide/16 v2, 0x384

    add-long v16, v14, v2

    .line 645
    iget-object v10, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    const-string v13, "PUT"

    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v10 .. v18}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {v7, v9, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 650
    :cond_2
    iget v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 651
    invoke-static/range {p2 .. p6}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v13

    .line 653
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 654
    const-string v3, "x-amz-content-sha256"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v3, "content-length"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v14, p5

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v3, "x-amz-storage-class"

    const-string v8, "REDUCED_REDUNDANCY"

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v3, "X-Amz-Security-Token"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v3, "x-amz-server-side-encryption-customer-algorithm"

    const-string v8, "AES256"

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v3, "x-amz-server-side-encryption-customer-key"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v3, "x-amz-server-side-encryption-customer-key-MD5"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v10, Lcom/uqm/crashsight/proguard/g;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "s3"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-direct {v10, v3, v4, v0, v8}, Lcom/uqm/crashsight/proguard/g;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-wide v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    const/4 v1, 0x0

    move-wide/from16 v16, v11

    move-object v11, v2

    move-object v12, v1

    move-object v14, v0

    move-object v15, v3

    invoke-virtual/range {v10 .. v17}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 673
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v0, 0x2710

    .line 676
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 677
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v14, p2

    move-wide/from16 v15, p3

    move-wide/from16 v17, p5

    .line 678
    invoke-static/range {v14 .. v19}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/io/File;JJLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7

    :catchall_0
    move-exception v0

    .line 681
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 682
    const-string v0, "[attach][uploadPut] Failed to upload, please check your network."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 407
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->a()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->a()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    .line 412
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 413
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 414
    const-string p1, "http.proxyPort"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 415
    sget-boolean v1, Lcom/uqm/crashsight/proguard/i;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 416
    :cond_2
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 418
    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 419
    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 421
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    :goto_1
    const/16 p1, 0x7530

    .line 423
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    .line 424
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    .line 425
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 426
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 427
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 428
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 430
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 434
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p9

    .line 956
    const-string v4, "Content-MD5"

    const-string v5, "Host"

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/i;->a()V

    move-object/from16 v7, p10

    .line 957
    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    if-nez v7, :cond_0

    .line 959
    const-string v0, "[attach][multiUploadPut] Failed to get HttpURLConnection object."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v6

    .line 963
    :cond_0
    const-string v12, "PUT"

    .line 964
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 965
    iget v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "Authorization"

    const-string v9, "uploadId"

    const-string v10, "partNumber"

    if-nez v8, :cond_1

    .line 966
    :try_start_1
    invoke-static/range {p4 .. p8}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    .line 967
    iget-object v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {v7, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v8, "Content-Length"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v8, "x-cos-security-token"

    iget-object v11, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v8, "x-cos-storage-class"

    const-string v11, "STANDARD_IA"

    invoke-virtual {v7, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-static {v7, v3}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 976
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 977
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-interface {v11, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 981
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v4, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    move-object v10, v11

    move-object v11, v1

    move-object v1, v15

    move-wide v15, v4

    move-object/from16 v17, v0

    invoke-static/range {v8 .. v17}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {v7, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    move-object v4, v15

    .line 988
    iget v5, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 989
    invoke-static/range {p4 .. p8}, Lcom/uqm/crashsight/proguard/o;->b(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v14

    .line 991
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 992
    const-string v8, "x-amz-content-sha256"

    invoke-interface {v5, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v8, "content-length"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v12, p7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v8, "X-Amz-Security-Token"

    iget-object v11, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v8, "x-amz-server-side-encryption-customer-algorithm"

    const-string v11, "AES256"

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v8, "x-amz-server-side-encryption-customer-key"

    iget-object v11, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v8, "x-amz-server-side-encryption-customer-key-MD5"

    iget-object v11, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1001
    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v11, Lcom/uqm/crashsight/proguard/g;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "PUT"

    const-string v2, "s3"

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-direct {v11, v1, v0, v2, v9}, Lcom/uqm/crashsight/proguard/g;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v15, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-wide v1, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    move-object v12, v5

    move-object v13, v8

    move-object/from16 v16, v0

    move-wide/from16 v17, v1

    invoke-virtual/range {v11 .. v18}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1015
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x2710

    .line 1019
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1020
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v15, p4

    move-wide/from16 v16, p5

    move-wide/from16 v18, p7

    .line 1021
    invoke-static/range {v15 .. v20}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/io/File;JJLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7

    :catchall_0
    move-exception v0

    .line 1024
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1128
    const-string v4, "Content-MD5"

    const-string v5, "Host"

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/i;->a()V

    move-object/from16 v7, p5

    .line 1129
    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1131
    const-string v0, "[attach][cmpMultipartPost] Failed to get HttpURLConnection object."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v6

    .line 1135
    :cond_0
    const-string v12, "POST"

    .line 1136
    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1137
    iget v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "Authorization"

    const-string v9, "uploadId"

    const-string v10, "application/xml"

    const-string v11, "Content-Type"

    if-nez v8, :cond_1

    .line 1138
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/uqm/crashsight/proguard/o;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 1139
    iget-object v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v7, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v8, "Content-Length"

    array-length v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v7, v11, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v8, "x-cos-security-token"

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v8, "x-cos-storage-class"

    const-string v10, "STANDARD_IA"

    invoke-virtual {v7, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-static {v7, v3}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 1149
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1150
    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1153
    invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v11, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v13, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    move-object v4, v15

    move-wide v15, v0

    move-object/from16 v17, v3

    invoke-static/range {v8 .. v17}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    invoke-virtual {v7, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    move-object v4, v15

    .line 1159
    iget v5, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 1160
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1161
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1162
    invoke-static {v5}, Lcom/uqm/crashsight/CrashSightStrategy$a;->toHex([B)Ljava/lang/String;

    move-result-object v15

    .line 1164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1165
    const-string v8, "x-amz-content-sha256"

    invoke-interface {v5, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v8, "content-length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v8, "X-Amz-Security-Token"

    iget-object v12, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v8, "x-amz-server-side-encryption-customer-algorithm"

    const-string v10, "AES256"

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v8, "x-amz-server-side-encryption-customer-key"

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string v8, "x-amz-server-side-encryption-customer-key-MD5"

    iget-object v10, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1175
    invoke-interface {v14, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    new-instance v12, Lcom/uqm/crashsight/proguard/g;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "POST"

    const-string v8, "s3"

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    invoke-direct {v12, v1, v0, v8, v9}, Lcom/uqm/crashsight/proguard/g;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-wide v8, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->k:J

    move-object v13, v5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-wide/from16 v18, v8

    invoke-virtual/range {v12 .. v19}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1185
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1188
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x2710

    .line 1192
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1193
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7

    :catchall_0
    move-exception v0

    .line 1197
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 355
    const-string p1, "destUrl is null."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 358
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/i;->a()V

    .line 359
    invoke-static {p3, p1}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_1

    .line 361
    const-string p1, "Failed to get HttpURLConnection object."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 366
    :cond_1
    const-string v2, "utf-8"

    if-eqz p4, :cond_2

    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 367
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 370
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_2
    const-string p4, "A37"

    .line 374
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string p4, "A38"

    .line 376
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 375
    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x2710

    .line 380
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 381
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    if-nez p2, :cond_3

    .line 383
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 385
    :cond_3
    const-string p4, "outputStream.write..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 387
    const-string p2, "outputStream.write done"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 391
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 392
    const-string p1, "Failed to upload, please check your network."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 290
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 295
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()V
    .locals 4

    const/4 v0, 0x1

    .line 451
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/uqm/crashsight/proguard/i$1;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/i$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 470
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 471
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 472
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 474
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V
    .locals 6

    .line 499
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 500
    const-string v1, ""

    .line 501
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/i;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 505
    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s resCode=[%d] resMsg=[%s]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[attach]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 p3, 0x1

    aput-object v3, v4, p3

    const/4 p3, 0x2

    aput-object v1, v4, p3

    invoke-static {p1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 506
    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p4, :cond_1

    .line 508
    invoke-virtual {p2, v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 513
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/b;)V
    .locals 2

    .line 482
    const-string v0, "x-cos-server-side-encryption-customer-algorithm"

    const-string v1, "AES256"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v0, "x-cos-server-side-encryption-customer-key"

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "x-cos-server-side-encryption-customer-key-MD5"

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 320
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 321
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 322
    :goto_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 324
    new-array v2, v2, [B

    .line 326
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    .line 327
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 330
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 332
    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_3

    .line 336
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 339
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_4

    .line 336
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    .line 339
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 341
    :cond_4
    :goto_5
    throw p0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 694
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 695
    const-string v0, "[attach][uploadId] Failed for no URL."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-gtz v0, :cond_a

    if-gtz v6, :cond_a

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v0

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_2

    .line 709
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadId] try time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 711
    new-instance v9, Ljava/util/Random;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Random;-><init>(J)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x2710

    add-long/2addr v9, v11

    .line 714
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move v9, v7

    move v7, v0

    .line 718
    :goto_1
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 720
    const-string v0, "[attach][uploadId] Failed to request for network not avail"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v7

    move v7, v9

    goto :goto_0

    :cond_3
    const-wide/16 v10, 0x0

    .line 724
    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/j;->a(J)V

    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "?uploads"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 727
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 728
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v5

    aput-object v13, v4, v8

    const/4 v13, 0x2

    aput-object v14, v4, v13

    const/4 v14, 0x3

    aput-object v15, v4, v14

    .line 727
    const-string v14, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v14, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 729
    invoke-direct {v1, v12, v3, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 733
    :try_start_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 734
    iget-object v12, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v14, "[uploadId]"

    invoke-direct {v1, v4, v12, v14, v5}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v12, 0xc8

    if-ne v0, v12, :cond_5

    .line 737
    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    .line 738
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 739
    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 740
    const-string v8, "<UploadId>"

    .line 741
    const-string v10, "</UploadId>"

    .line 742
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadId] uploadId:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 771
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 773
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-object v8

    :cond_4
    move v8, v9

    goto :goto_5

    .line 746
    :cond_5
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/i;->a(I)Z

    move-result v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v9, :cond_8

    .line 748
    :try_start_3
    const-string v9, "Location"

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 751
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadId] Failed to redirect: %d"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 771
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 773
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_4
    return-object v2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 757
    :try_start_5
    iput-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 758
    const-string v7, "[attach][uploadId] redirect code: %d ,to:%s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v0, v12, v5

    aput-object v9, v12, v8

    invoke-static {v7, v12}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v7, 0x0

    .line 764
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v10

    if-gez v0, :cond_7

    goto :goto_6

    :cond_7
    move-wide v10, v12

    .line 766
    :goto_6
    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 771
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_a

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_8
    :try_start_8
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 773
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_8
    return-object v2

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move v8, v9

    .line 768
    :goto_9
    :try_start_9
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 771
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v4, v0

    .line 773
    :goto_a
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_b
    move v0, v7

    move v7, v8

    goto :goto_e

    .line 771
    :goto_c
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 773
    invoke-static {v3}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 775
    :goto_d
    throw v2

    .line 777
    :cond_9
    const-string v0, "[attach][uploadId] Failed to execute post."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 779
    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    move v0, v7

    move v7, v9

    :goto_e
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v2, v4

    return-object v2
.end method

.method public final a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJ)Ljava/lang/String;
    .locals 22

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 862
    const-string v15, "ETag"

    iget-object v0, v14, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 863
    const-string v0, "[attach][multiUpload] Failed for no URL."

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v16

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_0
    if-gtz v0, :cond_a

    if-gtz v17, :cond_a

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move/from16 v18, v0

    const/16 v19, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v10, :cond_2

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] try time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 878
    new-instance v2, Ljava/util/Random;

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 881
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move/from16 v18, v0

    move/from16 v19, v1

    .line 885
    :goto_1
    iget-object v0, v12, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 887
    const-string v0, "[attach][multiUpload] Failed to request for network not avail"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move/from16 v0, v18

    move/from16 v1, v19

    goto :goto_0

    :cond_3
    move-wide/from16 v8, p8

    .line 891
    invoke-virtual {v13, v8, v9}, Lcom/uqm/crashsight/proguard/j;->a(J)V

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v14, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?partNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uploadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 896
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v11

    aput-object v1, v5, v10

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v3, 0x3

    aput-object v4, v5, v3

    .line 895
    const-string v3, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    const/16 v20, 0x1

    move-object/from16 v10, p2

    move-object/from16 v21, v15

    const/4 v15, 0x0

    move-object v11, v0

    .line 897
    invoke-direct/range {v1 .. v11}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_9

    .line 902
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 903
    iget-object v4, v14, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v5, "[multiUpload]"

    invoke-direct {v12, v1, v4, v5, v15}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_5

    .line 906
    invoke-virtual {v13, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    .line 907
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] ETag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v4, v21

    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 910
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 937
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 939
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-object v2

    :cond_4
    move-object/from16 v4, v21

    move/from16 v11, v18

    move/from16 v10, v19

    goto :goto_4

    :cond_5
    move-object/from16 v4, v21

    .line 912
    :try_start_3
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/i;->a(I)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v5, :cond_8

    .line 914
    :try_start_4
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] Failed to redirect: %d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 937
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 939
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_3
    return-object v16

    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 923
    :try_start_6
    iput-object v5, v14, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 924
    const-string v5, "[attach][multiUpload] redirect code: %d ,to:%s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v6, v14, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v15

    aput-object v6, v7, v20

    invoke-static {v5, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 930
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v5, v2

    if-gez v0, :cond_7

    goto :goto_5

    :cond_7
    move-wide v2, v5

    .line 932
    :goto_5
    invoke-virtual {v13, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 937
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v11, v18

    const/4 v10, 0x1

    goto :goto_8

    :cond_8
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 939
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_6
    return-object v16

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v4, v21

    :goto_7
    move/from16 v11, v18

    move/from16 v10, v19

    .line 934
    :goto_8
    :try_start_a
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 937
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 939
    :goto_9
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_a
    move v1, v10

    move v0, v11

    goto :goto_d

    .line 937
    :goto_b
    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 939
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 941
    :goto_c
    throw v2

    :cond_9
    move-object/from16 v4, v21

    .line 943
    const-string v0, "[attach][multiUpload] Failed to execute post."

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {v13, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    move/from16 v0, v18

    move/from16 v1, v19

    :goto_d
    move-object v15, v4

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_a
    return-object v16
.end method

.method public final a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;[B)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1039
    iget-object v0, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 1040
    const-string v0, "[attach][cmpMultipart] Failed for no URL."

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v10

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-gtz v0, :cond_9

    if-gtz v11, :cond_9

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    move v13, v0

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v12, :cond_2

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][cmpMultipart] try time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1056
    new-instance v2, Ljava/util/Random;

    .line 1057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 1059
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move v13, v0

    move v14, v1

    .line 1063
    :goto_1
    iget-object v0, v7, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1065
    const-string v0, "[attach][cmpMultipart] Failed to request for network not avail"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v13

    move v1, v14

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    .line 1069
    invoke-virtual {v8, v4, v5}, Lcom/uqm/crashsight/proguard/j;->a(J)V

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1073
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v10

    aput-object v0, v4, v12

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v1, 0x3

    aput-object v3, v4, v1

    .line 1072
    const-string v1, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v1, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v16, v11

    const-wide/16 v10, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 1074
    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1078
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1079
    iget-object v3, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v4, "[cmpMultipart]"

    invoke-direct {v7, v1, v3, v4, v12}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 1082
    invoke-virtual {v8, v10, v11}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1109
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_2
    return v12

    .line 1084
    :cond_4
    :try_start_2
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/i;->a(I)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_7

    .line 1086
    :try_start_3
    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[attach][cmpMultipart] Failed to redirect: %d"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1109
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_3
    return v2

    :cond_5
    add-int/lit8 v4, v16, 0x1

    .line 1095
    :try_start_5
    iput-object v3, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 1096
    const-string v3, "[attach][cmpMultipart] redirect code: %d ,to:%s"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    aput-object v5, v0, v12

    invoke-static {v3, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_6

    move-wide v2, v10

    .line 1104
    :cond_6
    invoke-virtual {v8, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1109
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_4
    move v11, v4

    const/4 v0, 0x0

    goto :goto_a

    :catch_0
    move-exception v0

    move v11, v4

    const/4 v13, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    .line 1109
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_6
    return v1

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_2
    move-exception v0

    move v12, v14

    :goto_7
    move/from16 v11, v16

    .line 1106
    :goto_8
    :try_start_8
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1109
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_9
    move v0, v13

    :goto_a
    const/4 v1, 0x0

    goto :goto_d

    .line 1109
    :goto_b
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 1111
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1113
    :goto_c
    throw v2

    .line 1115
    :cond_8
    const-string v0, "[attach][cmpMultipart] Failed to execute post."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {v8, v10, v11}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    move v0, v13

    move v12, v14

    move/from16 v11, v16

    :goto_d
    move v1, v12

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public final a(Ljava/io/File;JJLcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;)Z
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 527
    iget-object v0, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 528
    const-string v0, "[attach][Upload] Failed for no URL."

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v13

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    if-gtz v0, :cond_9

    if-gtz v14, :cond_9

    const/4 v15, 0x1

    if-eqz v1, :cond_1

    move/from16 v16, v0

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v15, :cond_2

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][Upload] try time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 543
    new-instance v2, Ljava/util/Random;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 546
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 550
    :goto_1
    iget-object v0, v10, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 552
    const-string v0, "[attach][Upload] Failed to request for network not avail"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_0

    :cond_3
    move-wide/from16 v6, p4

    .line 556
    invoke-virtual {v11, v6, v7}, Lcom/uqm/crashsight/proguard/j;->a(J)V

    .line 557
    iget-object v0, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 558
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v13

    aput-object v1, v4, v15

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v1, 0x3

    aput-object v3, v4, v1

    .line 557
    const-string v1, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v1, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 560
    iget-object v2, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/io/File;JJLjava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_8

    .line 564
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 565
    iget-object v5, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v6, "[Upload]"

    invoke-direct {v10, v1, v5, v6, v15}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 568
    invoke-virtual {v11, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 595
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_3
    return v15

    .line 570
    :cond_4
    :try_start_2
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/i;->a(I)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v5, :cond_7

    .line 572
    :try_start_3
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[attach][Upload] Failed to redirect: %d"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 595
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_4
    return v13

    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 581
    :try_start_5
    iput-object v5, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    .line 582
    const-string v5, "[attach][Upload] redirect code: %d ,to:%s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v12, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v13

    aput-object v6, v0, v15

    invoke-static {v5, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    goto :goto_5

    :cond_6
    move-wide v2, v4

    .line 590
    :goto_5
    invoke-virtual {v11, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 595
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_6
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v16, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_8

    .line 595
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_7
    return v13

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v15, v17

    .line 592
    :goto_8
    :try_start_8
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 595
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_9
    move v1, v15

    move/from16 v0, v16

    goto/16 :goto_0

    .line 595
    :goto_a
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 597
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 599
    :goto_b
    throw v2

    .line 601
    :cond_8
    const-string v0, "[attach][Upload] Failed to execute post."

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {v11, v2, v3}, Lcom/uqm/crashsight/proguard/j;->b(J)V

    goto/16 :goto_2

    :cond_9
    return v13
.end method

.method public final a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/proguard/m;Ljava/util/Map;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            "Lcom/uqm/crashsight/proguard/m;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 193
    const-string v2, "utf-8"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 194
    const-string v0, "Failed for no URL."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v3

    :cond_0
    move-object/from16 v5, p0

    .line 198
    iget-object v6, v5, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 200
    const-string v0, "Failed to request for network not avail"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v3

    .line 205
    :cond_1
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v8, p4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 206
    const-string v8, "wup_version"

    const-string v9, "3.0"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v8, "A37"

    invoke-static {v6, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v8, "A38"

    invoke-static {v6, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static/range {p2 .. p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v7}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->putAllHeaders(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    const/4 v6, 0x2

    .line 212
    invoke-static {v6}, Lcom/uqm/crashsight/proguard/w;->a(I)Lcom/uqm/crashsight/proguard/x;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 216
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/uqm/crashsight/proguard/x;->e([B)[B

    move-result-object v2

    .line 217
    array-length v7, v2

    .line 218
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v8, "TCP request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 220
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v0, v13, v4

    const/4 v14, 0x1

    aput-object v9, v13, v14

    aput-object v10, v13, v6

    const/4 v6, 0x3

    aput-object v11, v13, v6

    .line 219
    invoke-static {v8, v13}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    int-to-long v8, v7

    .line 222
    invoke-virtual {v1, v8, v9}, Lcom/uqm/crashsight/proguard/m;->a(J)V

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 225
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 226
    :try_start_1
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v9, 0x1f95

    invoke-direct {v8, v0, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x1388

    invoke-virtual {v6, v8, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 228
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 231
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 236
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, -0x1

    move-object v11, v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    :cond_2
    :goto_0
    if-lt v9, v10, :cond_3

    if-ne v10, v2, :cond_4

    .line 243
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v7

    const-wide/16 v15, 0x1388

    cmp-long v17, v13, v15

    if-lez v17, :cond_5

    .line 244
    const-string v0, "[tcp]Socket timeout!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v11, v3

    :cond_4
    int-to-long v7, v10

    .line 264
    invoke-virtual {v1, v7, v8}, Lcom/uqm/crashsight/proguard/m;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    :try_start_2
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 274
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-object v11

    :cond_5
    if-ne v10, v2, :cond_6

    .line 249
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v13

    if-lt v13, v12, :cond_2

    .line 250
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 251
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "[tcp]responseSize:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v11, v13}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    new-array v11, v10, [B

    goto :goto_0

    :cond_6
    sub-int v13, v10, v9

    .line 255
    invoke-virtual {v0, v11, v9, v13}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    if-eq v13, v2, :cond_2

    add-int/2addr v9, v13

    .line 258
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[tcp]totalBytesRead:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 214
    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "CompressFactory getCompress failed!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v3

    .line 267
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v6, :cond_8

    .line 271
    :try_start_6
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 274
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    const-wide/16 v6, 0x0

    .line 278
    invoke-virtual {v1, v6, v7}, Lcom/uqm/crashsight/proguard/m;->b(J)V

    return-object v3

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_9

    .line 271
    :try_start_7
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 274
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 276
    :cond_9
    :goto_4
    throw v1
.end method

.method public final a(Ljava/lang/String;[BLcom/uqm/crashsight/proguard/m;Ljava/util/Map;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/uqm/crashsight/proguard/m;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 97
    const-string v0, "Failed for no URL."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 102
    :cond_1
    array-length v0, v2

    int-to-long v8, v0

    .line 104
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 105
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object p1, v12, v5

    const/4 v13, 0x1

    aput-object v0, v12, v13

    const/4 v14, 0x2

    aput-object v10, v12, v14

    const/4 v0, 0x3

    aput-object v11, v12, v0

    .line 104
    const-string v0, "request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-gtz v0, :cond_b

    if-gtz v11, :cond_b

    if-eqz v12, :cond_2

    move v6, v0

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v13, :cond_3

    .line 116
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 118
    new-instance v6, Ljava/util/Random;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v6, v13, v14}, Ljava/util/Random;-><init>(J)V

    const/16 v13, 0x2710

    invoke-virtual {v6, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v13, v6

    const-wide/16 v18, 0x2710

    add-long v13, v13, v18

    .line 121
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    move v6, v0

    .line 125
    :goto_2
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 127
    const-string v0, "Failed to request for network not avail"

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v0, v13}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_3
    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v3, v8, v9}, Lcom/uqm/crashsight/proguard/m;->a(J)V

    move-object/from16 v13, p4

    .line 133
    invoke-direct {v1, v10, v2, v0, v13}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 137
    :try_start_0
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_6

    .line 140
    invoke-static {v14}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/uqm/crashsight/proguard/i;->a:Ljava/util/Map;

    .line 142
    invoke-static {v14}, Lcom/uqm/crashsight/proguard/i;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_4

    .line 143
    :cond_5
    array-length v0, v7

    int-to-long v4, v0

    :goto_4
    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/m;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 168
    :try_start_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_5
    return-object v7

    .line 145
    :cond_6
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/i;->a(I)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v4, :cond_8

    .line 147
    :try_start_3
    const-string v4, "Location"

    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v4, :cond_7

    .line 150
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 168
    :try_start_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 170
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_7
    return-object v2

    :catch_0
    move-exception v0

    const/4 v7, 0x2

    const/4 v12, 0x1

    goto :goto_c

    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 157
    :try_start_6
    const-string v5, "redirect code: %d ,to:%s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v7, 0x2

    :try_start_7
    new-array v6, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v6, v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v15, 0x1

    :try_start_8
    aput-object v4, v6, v15

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v10, v4

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v7, 0x2

    :goto_8
    const/4 v15, 0x1

    :goto_9
    move-object v10, v4

    const/4 v6, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v7, 0x2

    const/4 v15, 0x1

    :goto_a
    const/4 v12, 0x1

    goto :goto_d

    :cond_8
    const/4 v7, 0x2

    const/4 v15, 0x1

    .line 161
    :goto_b
    :try_start_9
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_9

    const-wide/16 v4, 0x0

    .line 163
    :cond_9
    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/m;->b(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 168
    :try_start_a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_6
    move-exception v0

    const/4 v7, 0x2

    :goto_c
    const/4 v15, 0x1

    .line 165
    :goto_d
    :try_start_b
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 168
    :try_start_c
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 170
    :goto_e
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_f
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_12

    .line 168
    :goto_10
    :try_start_d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 170
    invoke-static {v3}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 172
    :goto_11
    throw v2

    :cond_a
    const/4 v7, 0x2

    const/4 v15, 0x1

    .line 174
    const-string v0, "Failed to execute post."

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    .line 176
    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/m;->b(J)V

    move v0, v6

    :goto_12
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    move-object v2, v4

    return-object v2
.end method
