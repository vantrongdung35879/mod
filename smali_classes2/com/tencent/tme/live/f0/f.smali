.class public final enum Lcom/tencent/tme/live/f0/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/live/f0/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tme/live/f0/f;

.field public static final enum b:Lcom/tencent/tme/live/f0/f;

.field public static final enum c:Lcom/tencent/tme/live/f0/f;

.field public static final synthetic d:[Lcom/tencent/tme/live/f0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/tme/live/f0/f;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/f0/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tme/live/f0/f;->a:Lcom/tencent/tme/live/f0/f;

    new-instance v1, Lcom/tencent/tme/live/f0/f;

    const-string v3, "DISC_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tme/live/f0/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tme/live/f0/f;->b:Lcom/tencent/tme/live/f0/f;

    new-instance v3, Lcom/tencent/tme/live/f0/f;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tme/live/f0/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tme/live/f0/f;->c:Lcom/tencent/tme/live/f0/f;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/tme/live/f0/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/tme/live/f0/f;->d:[Lcom/tencent/tme/live/f0/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/live/f0/f;
    .locals 1

    const-class v0, Lcom/tencent/tme/live/f0/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/live/f0/f;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/live/f0/f;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f0/f;->d:[Lcom/tencent/tme/live/f0/f;

    invoke-virtual {v0}, [Lcom/tencent/tme/live/f0/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/live/f0/f;

    return-object v0
.end method
