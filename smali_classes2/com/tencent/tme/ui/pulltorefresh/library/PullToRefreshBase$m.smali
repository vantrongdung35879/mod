.class public final enum Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final enum c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final enum d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final enum e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final enum f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final enum g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public static final synthetic h:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-instance v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const-string v3, "PULL_TO_REFRESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-instance v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const-string v5, "RELEASE_TO_REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-instance v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/16 v7, 0x8

    const-string v8, "REFRESHING"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-instance v7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/16 v8, 0x9

    const-string v10, "MANUAL_REFRESHING"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-instance v8, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/16 v10, 0x10

    const-string v12, "OVERSCROLLING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v9

    aput-object v7, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->h:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

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

    iput p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;
    .locals 1

    const-class v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;
    .locals 1

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->h:[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    invoke-virtual {v0}, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    return-object v0
.end method
