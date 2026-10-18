.class public final enum Lcom/tencent/beacon/base/net/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/base/net/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/base/net/HttpMethod;

.field public static final enum DELETE:Lcom/tencent/beacon/base/net/HttpMethod;

.field public static final enum GET:Lcom/tencent/beacon/base/net/HttpMethod;

.field public static final enum POST:Lcom/tencent/beacon/base/net/HttpMethod;

.field public static final enum PUT:Lcom/tencent/beacon/base/net/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/beacon/base/net/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/beacon/base/net/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/beacon/base/net/HttpMethod;->GET:Lcom/tencent/beacon/base/net/HttpMethod;

    .line 2
    new-instance v1, Lcom/tencent/beacon/base/net/HttpMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/beacon/base/net/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/beacon/base/net/HttpMethod;->POST:Lcom/tencent/beacon/base/net/HttpMethod;

    .line 3
    new-instance v3, Lcom/tencent/beacon/base/net/HttpMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/beacon/base/net/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/beacon/base/net/HttpMethod;->PUT:Lcom/tencent/beacon/base/net/HttpMethod;

    .line 4
    new-instance v5, Lcom/tencent/beacon/base/net/HttpMethod;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/beacon/base/net/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/beacon/base/net/HttpMethod;->DELETE:Lcom/tencent/beacon/base/net/HttpMethod;

    const/4 v7, 0x4

    .line 5
    new-array v7, v7, [Lcom/tencent/beacon/base/net/HttpMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tencent/beacon/base/net/HttpMethod;->$VALUES:[Lcom/tencent/beacon/base/net/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/base/net/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/beacon/base/net/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/base/net/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/base/net/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/base/net/HttpMethod;->$VALUES:[Lcom/tencent/beacon/base/net/HttpMethod;

    invoke-virtual {v0}, [Lcom/tencent/beacon/base/net/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/base/net/HttpMethod;

    return-object v0
.end method
