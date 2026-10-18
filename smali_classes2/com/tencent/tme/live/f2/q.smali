.class public final enum Lcom/tencent/tme/live/f2/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/live/f2/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tme/live/f2/q;

.field public static final enum b:Lcom/tencent/tme/live/f2/q;

.field public static final enum c:Lcom/tencent/tme/live/f2/q;

.field public static final synthetic d:[Lcom/tencent/tme/live/f2/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/tme/live/f2/q;

    const-string v1, "OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/f2/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tme/live/f2/q;->a:Lcom/tencent/tme/live/f2/q;

    new-instance v1, Lcom/tencent/tme/live/f2/q;

    const-string v3, "OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tme/live/f2/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tme/live/f2/q;->b:Lcom/tencent/tme/live/f2/q;

    new-instance v3, Lcom/tencent/tme/live/f2/q;

    const-string v5, "CLOSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tme/live/f2/q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tme/live/f2/q;->c:Lcom/tencent/tme/live/f2/q;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/tme/live/f2/q;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/tme/live/f2/q;->d:[Lcom/tencent/tme/live/f2/q;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/live/f2/q;
    .locals 1

    const-class v0, Lcom/tencent/tme/live/f2/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/live/f2/q;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/live/f2/q;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/f2/q;->d:[Lcom/tencent/tme/live/f2/q;

    invoke-virtual {v0}, [Lcom/tencent/tme/live/f2/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/live/f2/q;

    return-object v0
.end method
