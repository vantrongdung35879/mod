.class public final Lcom/uqm/crashsight/crashreport/biz/b;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/biz/b$c;,
        Lcom/uqm/crashsight/crashreport/biz/b$b;,
        Lcom/uqm/crashsight/crashreport/biz/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b;->a:Landroid/content/Context;

    .line 48
    iput-boolean p2, p0, Lcom/uqm/crashsight/crashreport/biz/b;->d:Z

    return-void
.end method

.method private static a(Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 574
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 575
    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 576
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    :cond_1
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    const-string v2, "_ut"

    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    const-string v2, "_tp"

    iget v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v2, "_dt"

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 585
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 598
    :cond_0
    :try_start_0
    const-string v1, "_dt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 602
    :cond_1
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 603
    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/v;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    if-eqz p0, :cond_2

    .line 605
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 609
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/biz/b;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/biz/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 2468
    iget p2, p1, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    if-eq p2, v1, :cond_0

    iget p2, p1, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 2469
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p2

    .line 2470
    iget-object p2, p2, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 2471
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2473
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/16 v2, 0x14

    if-lt p2, v2, :cond_0

    .line 2474
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "[UserInfo] There are too many user info in local: %d"

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 2478
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object p0

    .line 2479
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object p2

    const/4 v2, 0x0

    const-string v3, "t_ui"

    invoke-virtual {p2, v3, p0, v2, v1}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;Z)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-ltz p0, :cond_1

    .line 2481
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v0

    aput-object p0, p2, v1

    const-string p0, "[Database] insert %s success with ID: %d"

    invoke-static {p0, p2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2482
    iput-wide v4, p1, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->a:J

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 542
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 546
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 547
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 548
    const-string v4, " or _id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x4

    .line 553
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v4, p0

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 557
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v2

    const-string v3, "t_ui"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result p0

    .line 559
    const-string v0, "[Database] deleted %s data %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_ui"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 561
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/crashreport/biz/b;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/b;->b:J

    return-wide v0
.end method

.method private declared-synchronized c()V
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, v1, Lcom/uqm/crashsight/crashreport/biz/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 181
    monitor-exit p0

    return-void

    .line 184
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 187
    monitor-exit p0

    return-void

    .line 189
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x3e9

    .line 190
    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/proguard/l;->b(I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 192
    monitor-exit p0

    return-void

    .line 196
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/uqm/crashsight/crashreport/biz/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x13

    if-lez v6, :cond_7

    const/4 v7, 0x0

    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_6

    add-int/lit8 v8, v7, 0x1

    move v9, v8

    .line 210
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 211
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    iget-wide v10, v10, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    .line 212
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    iget-wide v12, v12, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    cmp-long v14, v10, v12

    if-lez v14, :cond_4

    .line 213
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 214
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {v0, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    .line 222
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 228
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    .line 229
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 230
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 231
    iget-wide v9, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_9

    .line 233
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 236
    iget-wide v9, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Lcom/uqm/crashsight/proguard/v;->a()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_9

    .line 237
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_9
    iget-wide v9, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x927c0

    sub-long/2addr v11, v13

    cmp-long v13, v9, v11

    if-lez v13, :cond_8

    .line 243
    iget v9, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    if-eq v9, v5, :cond_a

    iget v9, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_a

    iget v8, v8, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    if-ne v8, v3, :cond_8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    const/16 v6, 0x32

    if-le v7, v6, :cond_d

    .line 253
    const-string v6, "[UserInfo] Upload user info too many times in 10 min: %d"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-static {v6, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_4

    .line 256
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    const/4 v6, 0x1

    .line 260
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 261
    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Ljava/util/List;)V

    :cond_e
    if-eqz v6, :cond_1f

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_b

    .line 270
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 272
    :cond_10
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 273
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 274
    iget-boolean v8, v7, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z

    if-eqz v8, :cond_10

    .line 275
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 281
    :cond_11
    const-string v6, "[UserInfo] Upload user info(size: %d), lite user info(size: %d)"

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v4

    aput-object v8, v9, v5

    .line 281
    invoke-static {v6, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v0, :cond_1b

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_9

    .line 1293
    :cond_12
    iget v6, v1, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    if-ne v6, v5, :cond_13

    const/4 v3, 0x1

    .line 1295
    :cond_13
    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/util/List;I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v3

    if-nez v3, :cond_14

    .line 1297
    const-string v0, "[UserInfo] Failed to create UserInfoPackage."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1300
    :cond_14
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->toByteArray()[B

    move-result-object v3

    if-nez v3, :cond_15

    .line 1302
    const-string v0, "[UserInfo] Failed to encode data."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1307
    :cond_15
    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/biz/b;->a:Landroid/content/Context;

    const/16 v7, 0x348

    invoke-static {v6, v7, v3}, Lcom/uqm/crashsight/proguard/h;->a(Landroid/content/Context;I[B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v3

    if-nez v3, :cond_16

    .line 1310
    const-string v0, "[UserInfo] Request package is null."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1317
    :cond_16
    new-instance v6, Lcom/uqm/crashsight/crashreport/biz/b$1;

    invoke-direct {v6, v1, v0}, Lcom/uqm/crashsight/crashreport/biz/b$1;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;Ljava/util/List;)V

    .line 1337
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 1338
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 1339
    sget-object v7, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    .line 1396
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v8

    if-eqz v8, :cond_17

    const/16 v9, 0x3ec

    const/4 v10, 0x0

    .line 1398
    invoke-virtual {v8, v9, v10, v5}, Lcom/uqm/crashsight/proguard/d;->a(ILcom/uqm/crashsight/proguard/c;Z)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 1402
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "NOT_USE_TCP_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1406
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "NOT_USE_TCP_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    const-string v9, "enable"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    goto :goto_6

    :cond_17
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_19

    .line 1342
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v8

    iget v9, v1, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    if-ne v9, v5, :cond_18

    const/16 v17, 0x1

    goto :goto_7

    :cond_18
    const/16 v17, 0x0

    .line 2275
    :goto_7
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v10

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/Object;)[B

    move-result-object v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v9, 0x3e9

    const/4 v15, 0x0

    move-object v12, v0

    move-object v13, v7

    move-object v14, v6

    move-object/from16 v19, v3

    invoke-virtual/range {v8 .. v19}, Lcom/uqm/crashsight/proguard/l;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;IIZLjava/util/Map;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)V

    goto :goto_9

    .line 1345
    :cond_19
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v8

    iget v9, v1, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    if-ne v9, v5, :cond_1a

    const/4 v14, 0x1

    goto :goto_8

    :cond_1a
    const/4 v14, 0x0

    :goto_8
    const/4 v15, 0x0

    const/16 v9, 0x3e9

    move-object v10, v3

    move-object v11, v0

    move-object v12, v7

    move-object v13, v6

    invoke-virtual/range {v8 .. v15}, Lcom/uqm/crashsight/proguard/l;->a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZLjava/util/Map;)V

    .line 2351
    :cond_1b
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2355
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/util/List;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoLiteList;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2358
    const-string v0, "[UserInfo] UserInfoLiteList is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2359
    monitor-exit p0

    return-void

    .line 2362
    :cond_1c
    :try_start_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoLiteList;->toByteArray()[B

    move-result-object v6

    .line 2367
    new-instance v9, Lcom/uqm/crashsight/crashreport/biz/b$2;

    invoke-direct {v9, v1, v2}, Lcom/uqm/crashsight/crashreport/biz/b$2;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;Ljava/util/List;)V

    .line 2387
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 2388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/userInfoLite"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/userInfoLite"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2391
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object v3

    iget v0, v1, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    if-ne v0, v5, :cond_1d

    const/4 v12, 0x1

    goto :goto_a

    :cond_1d
    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x0

    const/16 v4, 0x3e9

    const/16 v5, 0x348

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/uqm/crashsight/proguard/l;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;IIZLjava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    :cond_1e
    monitor-exit p0

    return-void

    .line 265
    :cond_1f
    :goto_b
    :try_start_6
    const-string v0, "[UserInfo] There is no user info in local database."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 494
    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_pc = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 496
    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v1

    const-string v2, "t_ui"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 501
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 504
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Landroid/database/Cursor;)Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 506
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 510
    :cond_3
    :try_start_2
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 511
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 513
    :catchall_0
    :try_start_3
    const-string v3, "[Database] unknown id."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x4

    .line 521
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 522
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v5

    const-string v6, "t_ui"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I

    move-result v1

    .line 524
    const-string v3, "[Database] deleted %s error data %d"

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "t_ui"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    aput-object v1, v5, v4

    .line 524
    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz p1, :cond_6

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object p1, v0

    .line 529
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_7

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :catchall_3
    move-exception v0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_8
    throw v0
.end method

.method public final a()V
    .locals 6

    .line 123
    invoke-static {}, Lcom/uqm/crashsight/proguard/v;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/b;->b:J

    .line 124
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/crashreport/biz/b$b;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/biz/b$b;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;)V

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/b;->b:J

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(IZJ)V
    .locals 4

    .line 90
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p3

    iget-boolean p3, p3, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    if-nez p3, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 p3, 0x8

    if-eq p1, p3, :cond_0

    .line 97
    const-string p1, "UserInfo is disable"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 102
    :cond_1
    iget p3, p0, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/uqm/crashsight/crashreport/biz/b;->c:I

    .line 105
    :cond_2
    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/biz/b;->a:Landroid/content/Context;

    .line 1052
    invoke-static {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p3

    .line 1053
    new-instance v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;-><init>()V

    .line 1054
    iput p1, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    .line 1055
    iget-object v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    .line 1056
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    .line 1057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    const-wide/16 v2, -0x1

    .line 1058
    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    .line 1059
    iget-object v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    if-ne p1, v1, :cond_3

    const/4 p4, 0x1

    .line 1060
    :cond_3
    iput p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->o:I

    .line 1062
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result p4

    iput-boolean p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    .line 1063
    iget-object p4, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    .line 1064
    iget-wide v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->g:J

    .line 1065
    iget-wide v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->u:J

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->h:J

    .line 1066
    iget-wide v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->v:J

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->i:J

    .line 1069
    iget-wide v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->w:J

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    .line 1070
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:Ljava/util/Map;

    .line 1071
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 1072
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;

    .line 1073
    iget-wide v2, p3, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v2, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->u:J

    .line 1074
    sget-object p4, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    iput-object p4, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->v:Ljava/lang/String;

    .line 1075
    invoke-virtual {p3}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result p3

    iput p3, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    const/4 p3, 0x6

    if-ne p1, p3, :cond_4

    .line 1077
    iput-boolean v1, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z

    .line 106
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p1

    new-instance p3, Lcom/uqm/crashsight/crashreport/biz/b$a;

    invoke-direct {p3, p0, v0, p2}, Lcom/uqm/crashsight/crashreport/biz/b$a;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 115
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/crashreport/biz/b$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/uqm/crashsight/crashreport/biz/b$c;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;J)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 415
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v1, Lcom/uqm/crashsight/crashreport/biz/b$3;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/biz/b$3;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;)V

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
