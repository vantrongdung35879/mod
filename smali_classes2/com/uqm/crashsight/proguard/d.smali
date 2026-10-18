.class public final Lcom/uqm/crashsight/proguard/d;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/proguard/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/uqm/crashsight/proguard/d; = null

.field private static b:Lcom/uqm/crashsight/proguard/e; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/uqm/crashsight/proguard/e;

    invoke-direct {v0, p1, p2}, Lcom/uqm/crashsight/proguard/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 266
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 271
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p4, :cond_1

    .line 274
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 280
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    if-eqz p4, :cond_2

    .line 274
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    :cond_2
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;)J
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)J
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;)J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 181
    :try_start_0
    sget-object v2, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 183
    const-string v3, "_id"

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const/4 p2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 185
    const-string v5, "[Database] insert %s success."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, p2

    invoke-static {v5, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_0
    const-string v5, "[Database] replace %s error."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, p2

    invoke-static {v5, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v0, v2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 192
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p3, :cond_2

    .line 195
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 201
    :cond_2
    :goto_2
    monitor-exit p0

    return-wide v0

    :catchall_2
    move-exception p1

    if-eqz p3, :cond_3

    .line 195
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    :cond_3
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)J
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 215
    :try_start_0
    sget-object v2, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-lez p2, :cond_0

    .line 219
    const-string v2, "[Database] update %s success."

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, p3

    invoke-static {v2, p4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    const-string v2, "[Database] update %s error."

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, p3

    invoke-static {v2, p4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    int-to-long p1, p2

    move-wide v0, p1

    :cond_1
    if-eqz p5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 226
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p5, :cond_2

    .line 229
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 235
    :cond_2
    :goto_2
    monitor-exit p0

    return-wide v0

    :catchall_2
    move-exception p1

    if-eqz p5, :cond_3

    .line 229
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    :cond_3
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)Landroid/database/Cursor;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p10}, Lcom/uqm/crashsight/proguard/d;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)Landroid/database/Cursor;
    .locals 12

    monitor-enter p0

    const/4 v1, 0x0

    .line 244
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 247
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 251
    :try_start_1
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 256
    :try_start_2
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method private a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;
    .locals 22

    if-nez p11, :cond_0

    .line 137
    new-instance v10, Lcom/uqm/crashsight/proguard/d$a;

    const/4 v0, 0x3

    move-object/from16 v15, p0

    move-object/from16 v1, p10

    invoke-direct {v10, v15, v0, v1}, Lcom/uqm/crashsight/proguard/d$a;-><init>(Lcom/uqm/crashsight/proguard/d;ILcom/uqm/crashsight/proguard/c;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 138
    invoke-virtual/range {v0 .. v9}, Lcom/uqm/crashsight/proguard/d$a;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v15, p0

    move-object/from16 v1, p10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v21, p10

    .line 143
    invoke-direct/range {v11 .. v21}, Lcom/uqm/crashsight/proguard/d;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/proguard/d;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/d;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->a:Lcom/uqm/crashsight/proguard/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/proguard/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)",
            "Lcom/uqm/crashsight/proguard/d;"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/proguard/d;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->a:Lcom/uqm/crashsight/proguard/d;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/uqm/crashsight/proguard/d;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/proguard/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/uqm/crashsight/proguard/d;->a:Lcom/uqm/crashsight/proguard/d;

    .line 48
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/d;->a:Lcom/uqm/crashsight/proguard/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/uqm/crashsight/proguard/h;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 608
    :cond_0
    :try_start_0
    new-instance v1, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    .line 609
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/h;->a:J

    .line 610
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/uqm/crashsight/proguard/h;->b:I

    .line 611
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    .line 612
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/h;->d:Ljava/lang/String;

    .line 613
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 614
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/uqm/crashsight/proguard/h;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 617
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(ILcom/uqm/crashsight/proguard/c;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uqm/crashsight/proguard/c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/proguard/d;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/proguard/h;

    .line 370
    iget-object v1, p2, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v1, :cond_0

    .line 372
    iget-object p2, p2, Lcom/uqm/crashsight/proguard/h;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 377
    :goto_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object p2
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;ILcom/uqm/crashsight/proguard/c;)Ljava/util/Map;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/proguard/d;->a(ILcom/uqm/crashsight/proguard/c;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/c;)Z
    .locals 5

    const-string v0, " and _tp = \""

    monitor-enter p0

    const/4 v1, 0x0

    .line 690
    :try_start_0
    sget-object v2, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 693
    invoke-static {p2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 696
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 700
    :goto_0
    const-string p2, "t_pf"

    const/4 v0, 0x0

    invoke-virtual {v2, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 701
    const-string p2, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_pf"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 708
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 705
    :try_start_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p3, :cond_2

    .line 708
    :try_start_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 714
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    if-eqz p3, :cond_3

    .line 708
    :try_start_4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 713
    :cond_3
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;)Z
    .locals 3

    .line 347
    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {v0}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    int-to-long v1, p1

    .line 348
    iput-wide v1, v0, Lcom/uqm/crashsight/proguard/h;->a:J

    .line 349
    iput-object p2, v0, Lcom/uqm/crashsight/proguard/h;->f:Ljava/lang/String;

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 351
    iput-object p3, v0, Lcom/uqm/crashsight/proguard/h;->g:[B

    .line 352
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/proguard/d;->b(Lcom/uqm/crashsight/proguard/h;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    .line 357
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 354
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_0

    .line 357
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :catchall_1
    move-exception p1

    if-eqz p4, :cond_2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 359
    :cond_2
    throw p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;ILjava/lang/String;Lcom/uqm/crashsight/proguard/c;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/d;ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/uqm/crashsight/proguard/h;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 750
    :cond_0
    :try_start_0
    new-instance v1, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    .line 751
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/h;->a:J

    .line 752
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 753
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/h;->f:Ljava/lang/String;

    .line 754
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/uqm/crashsight/proguard/h;->g:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 757
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized b(Lcom/uqm/crashsight/proguard/h;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 433
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/d;->d(Lcom/uqm/crashsight/proguard/h;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 437
    const-string v3, "t_pf"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 439
    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_pf"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 440
    iput-wide v1, p1, Lcom/uqm/crashsight/proguard/h;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return v4

    .line 443
    :cond_0
    monitor-exit p0

    return v0

    .line 447
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 449
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    .line 455
    :try_start_2
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method private static c(Lcom/uqm/crashsight/proguard/h;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 582
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 583
    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/h;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 584
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/uqm/crashsight/proguard/h;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 586
    :cond_1
    const-string v2, "_tp"

    iget v3, p0, Lcom/uqm/crashsight/proguard/h;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "_th"

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/uqm/crashsight/proguard/h;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 590
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v2, :cond_2

    .line 591
    const-string v2, "_dt"

    iget-object p0, p0, Lcom/uqm/crashsight/proguard/h;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 595
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/h;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 632
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 635
    const-string v3, "t_pf"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, v10

    .line 636
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 671
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 638
    :cond_0
    monitor-exit p0

    return-object v0

    .line 641
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 644
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/d;->b(Landroid/database/Cursor;)Lcom/uqm/crashsight/proguard/h;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 646
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 650
    :cond_2
    :try_start_3
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 651
    const-string v7, " or _tp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    :try_start_4
    const-string v5, "[Database] unknown id."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 660
    const-string v5, " and _id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 661
    invoke-virtual {v10, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 662
    const-string v3, "t_pf"

    invoke-virtual {v1, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 663
    const-string v1, "[Database] deleted %s illegal data %d."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_pf"

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v2, :cond_5

    .line 671
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 665
    :cond_5
    monitor-exit p0

    return-object v4

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v0

    .line 668
    :goto_1
    :try_start_6
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_6

    .line 671
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_3

    .line 677
    :cond_6
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_4
    move-exception p1

    if-eqz v2, :cond_7

    .line 671
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_7
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method private static d(Lcom/uqm/crashsight/proguard/h;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 721
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/h;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 727
    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/h;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 728
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/uqm/crashsight/proguard/h;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    :cond_1
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/uqm/crashsight/proguard/h;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v2, :cond_2

    .line 733
    const-string v2, "_dt"

    iget-object p0, p0, Lcom/uqm/crashsight/proguard/h;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 737
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)I
    .locals 0

    const/4 p3, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;Z)J
    .locals 0

    const/4 p3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/proguard/d;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/uqm/crashsight/proguard/c;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 112
    invoke-direct/range {v0 .. v11}, Lcom/uqm/crashsight/proguard/d;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/h;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    if-ltz p1, :cond_0

    .line 468
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v9

    goto/16 :goto_2

    :cond_0
    move-object v4, v9

    .line 469
    :goto_0
    const-string v2, "t_lr"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 470
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 506
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 473
    :cond_1
    monitor-exit p0

    return-object v9

    .line 476
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 479
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/d;->a(Landroid/database/Cursor;)Lcom/uqm/crashsight/proguard/h;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 481
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 485
    :cond_3
    :try_start_4
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 486
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 489
    :catchall_1
    :try_start_5
    const-string v3, "[Database] unknown id."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 495
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x4

    .line 497
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v3, "t_lr"

    invoke-virtual {v0, v3, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 499
    const-string v1, "[Database] deleted %s illegal data %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz p1, :cond_6

    .line 506
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 501
    :cond_6
    monitor-exit p0

    return-object v2

    :catchall_2
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 503
    :goto_2
    :try_start_7
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_8

    .line 506
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_7
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 514
    :cond_8
    :goto_3
    monitor-exit p0

    return-object v9

    :catchall_4
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1
.end method

.method public final a(ILcom/uqm/crashsight/proguard/c;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uqm/crashsight/proguard/c;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/proguard/d;->a(ILcom/uqm/crashsight/proguard/c;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/h;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 522
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/proguard/h;

    .line 529
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/uqm/crashsight/proguard/h;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x4

    .line 534
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 v2, 0x0

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 538
    :try_start_1
    const-string v1, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 539
    const-string v0, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 541
    :try_start_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 543
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 546
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 548
    :cond_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 523
    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/c;Z)Z
    .locals 1

    const/4 p1, 0x0

    const/16 p3, 0x3ec

    if-nez p4, :cond_0

    .line 335
    new-instance p4, Lcom/uqm/crashsight/proguard/d$a;

    const/4 v0, 0x6

    invoke-direct {p4, p0, v0, p1}, Lcom/uqm/crashsight/proguard/d$a;-><init>(Lcom/uqm/crashsight/proguard/d;ILcom/uqm/crashsight/proguard/c;)V

    .line 336
    invoke-virtual {p4, p3, p2}, Lcom/uqm/crashsight/proguard/d$a;->a(ILjava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    .line 340
    :cond_0
    invoke-direct {p0, p3, p2, p1}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;Lcom/uqm/crashsight/proguard/c;)Z

    move-result p1

    return p1
.end method

.method public final a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;Z)Z
    .locals 1

    const/4 p4, 0x0

    if-nez p5, :cond_0

    .line 293
    new-instance p5, Lcom/uqm/crashsight/proguard/d$a;

    const/4 v0, 0x4

    invoke-direct {p5, p0, v0, p4}, Lcom/uqm/crashsight/proguard/d$a;-><init>(Lcom/uqm/crashsight/proguard/d;ILcom/uqm/crashsight/proguard/c;)V

    .line 294
    invoke-virtual {p5, p1, p2, p3}, Lcom/uqm/crashsight/proguard/d$a;->a(ILjava/lang/String;[B)V

    .line 295
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    .line 298
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Lcom/uqm/crashsight/proguard/h;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 397
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 399
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/d;->c(Lcom/uqm/crashsight/proguard/h;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 401
    const-string v3, "t_lr"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 403
    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_lr"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 404
    iput-wide v1, p1, Lcom/uqm/crashsight/proguard/h;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return v4

    .line 407
    :cond_0
    monitor-exit p0

    return v0

    .line 411
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 413
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    .line 419
    :try_start_2
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .locals 4

    monitor-enter p0

    .line 556
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/proguard/d;->b:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 559
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_tp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 560
    :goto_0
    const-string v2, "t_lr"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 561
    const-string v0, "[Database] deleted %s data %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "t_lr"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 563
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 565
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 568
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 570
    :cond_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
