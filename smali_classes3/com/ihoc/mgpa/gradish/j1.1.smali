.class public abstract Lcom/ihoc/mgpa/gradish/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/j1;->a:Ljava/lang/String;

    .line 3
    const-string v0, ""

    sput-object v0, Lcom/ihoc/mgpa/gradish/j1;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/j1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "UIDV8"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "XIDV8"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "XIDV8"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
