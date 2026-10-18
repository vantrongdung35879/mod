.class public Lcom/tencent/mna/base/report/b;
.super Ljava/lang/Object;
.source "BeaconReportChannel.java"

# interfaces
.implements Lcom/tencent/mna/base/report/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/report/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/report/b;->a:Ljava/util/Set;

    .line 5
    const-string v1, "920097337"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v0, "com.tencent.beacon.event.UserAction"

    sput-object v0, Lcom/tencent/mna/base/report/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/tencent/mna/base/report/b;->c:Ljava/lang/Class;

    .line 15
    sput-object v0, Lcom/tencent/mna/base/report/b;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/base/report/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/base/report/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 30
    :cond_0
    sget-object v1, Lcom/tencent/mna/base/report/b;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 31
    monitor-enter p0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 34
    :try_start_0
    const-string v8, "onUserAction"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v5

    aput-object v11, v9, v4

    const-class v11, Ljava/util/Map;

    aput-object v11, v9, v3

    aput-object v10, v9, v2

    aput-object v10, v9, v1

    invoke-virtual {p1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    sput-object v0, Lcom/tencent/mna/base/report/b;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 41
    :catch_0
    :try_start_1
    const-string v8, "BeaconReportChannel:::reportEvent 1 no such method exception"

    invoke-static {v8}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 46
    :try_start_2
    const-string v0, "onUserAction"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v1, v7

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v5

    aput-object v6, v1, v4

    const-class v4, Ljava/util/Map;

    aput-object v4, v1, v3

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    sput-object p1, Lcom/tencent/mna/base/report/b;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 53
    :catch_1
    :try_start_3
    const-string p1, "BeaconReportChannel:::reportEvent 2 not suchmethod exception"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 56
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 58
    :cond_3
    :goto_3
    sget-object p1, Lcom/tencent/mna/base/report/b;->d:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x7

    if-lt v3, v10, :cond_0

    .line 11
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 12
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p3, v10, v2

    aput-object v3, v10, v8

    aput-object v11, v10, v7

    aput-object v12, v10, v6

    aput-object p9, v10, v5

    aput-object v13, v10, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v10, v9

    .line 13
    invoke-virtual {v1, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 19
    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 20
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p3, v9, v2

    aput-object v3, v9, v8

    aput-object v10, v9, v7

    aput-object v11, v9, v6

    aput-object p9, v9, v5

    aput-object v12, v9, v4

    .line 21
    invoke-virtual {v1, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BeaconReportChannel:::reportEvent execReportMethod call method exception:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public static b()Lcom/tencent/mna/base/report/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/report/b$b;->a()Lcom/tencent/mna/base/report/b;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "BeaconReportChannel:::reportEvent getUsingClassObject exception:"

    .line 1
    sget-object v1, Lcom/tencent/mna/base/report/b;->c:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 2
    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/mna/base/report/b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    sput-object v1, Lcom/tencent/mna/base/report/b;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 13
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15
    :cond_0
    :goto_2
    sget-object v0, Lcom/tencent/mna/base/report/b;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/base/report/b;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BeaconReportChannel:::checkValid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .line 59
    const-string v0, "com.tencent.beacongsdk.event.UserAction"

    .line 0
    const-string v1, "BeaconReportChannel:::initUserAction call method exception:"

    const/4 v2, 0x0

    .line 59
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :try_start_1
    const-string v4, "setAppkey"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    sget-object v6, Lcom/tencent/mna/base/report/b;->a:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    const-string p1, "BeaconReportChannel:::init local beacon pri appKey:0000039UUF34995T"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 70
    new-array p1, v5, [Ljava/lang/Object;

    const-string v6, "0000039UUF34995T"

    aput-object v6, p1, v2

    invoke-virtual {v4, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    const-string p1, "BeaconReportChannel:::init local beacon pub appKey:0S000JK3HD2N4GEH"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 74
    new-array p1, v5, [Ljava/lang/Object;

    const-string v6, "0S000JK3HD2N4GEH"

    aput-object v6, p1, v2

    invoke-virtual {v4, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    const-string p1, "initUserAction"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v2

    .line 78
    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 79
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sput-object v0, Lcom/tencent/mna/base/report/b;->b:Ljava/lang/String;

    .line 84
    const-string p1, "BeaconReportChannel:::init local beacon suss"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v5

    :catch_0
    move-exception p1

    .line 87
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 93
    :catchall_0
    const-string p1, "BeaconReportChannel:::onUserAction1 no such method exception"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    return v2

    :catch_1
    move-exception p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "BeaconReportChannel:::init ClassNotFoundException, msg:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v2
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 3
    const-string p1, "BeaconReportChannel:::reportEvent failed, map is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mna/base/report/b;->c()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/tencent/mna/base/report/b;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move v10, p3

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/tencent/mna/base/report/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result p1

    return p1
.end method
