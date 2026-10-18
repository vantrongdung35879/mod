.class public final enum Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public static final enum c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public static final enum d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public static final enum e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public static final enum f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public static final synthetic g:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    new-instance v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v3, "PULL_FROM_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    new-instance v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v5, "PULL_FROM_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    new-instance v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    new-instance v7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v9, "MANUAL_REFRESH_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->g:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a:I

    return-void
.end method

.method public static a(I)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
    .locals 5

    invoke-static {}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->values()[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1
    iget v4, v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
    .locals 1

    const-class v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
    .locals 1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->g:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
