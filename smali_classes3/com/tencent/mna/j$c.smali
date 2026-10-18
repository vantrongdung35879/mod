.class public final enum Lcom/tencent/mna/j$c;
.super Ljava/lang/Enum;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mna/j$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STAGE_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

.field public static final enum STAGE_DIRECT_CHOSEN:Lcom/tencent/mna/j$c;

.field public static final enum STAGE_FORWARD_CHOSEN:Lcom/tencent/mna/j$c;

.field public static final enum STAGE_NOT_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

.field private static final synthetic a:[Lcom/tencent/mna/j$c;


# instance fields
.field private desc:Ljava/lang/String;

.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/tencent/mna/j$c;

    const-string/jumbo v1, "\u542f\u52a8\u9636\u6bb5\u5df2\u8fde\u7eed\u6d4b\u901f"

    const-string v2, "STAGE_CONTINUOUS_SPEED_TEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/tencent/mna/j$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/j$c;->STAGE_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

    .line 2
    new-instance v1, Lcom/tencent/mna/j$c;

    const-string/jumbo v2, "\u9009\u62e9\u8f6c\u53d1"

    const-string v4, "STAGE_FORWARD_CHOSEN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/tencent/mna/j$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/j$c;->STAGE_FORWARD_CHOSEN:Lcom/tencent/mna/j$c;

    .line 3
    new-instance v2, Lcom/tencent/mna/j$c;

    const-string/jumbo v4, "\u9009\u62e9\u76f4\u8fde"

    const-string v6, "STAGE_DIRECT_CHOSEN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/tencent/mna/j$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/tencent/mna/j$c;->STAGE_DIRECT_CHOSEN:Lcom/tencent/mna/j$c;

    .line 4
    new-instance v4, Lcom/tencent/mna/j$c;

    const-string/jumbo v6, "\u542f\u52a8\u9636\u6bb5\u672a\u8fde\u7eed\u6d4b\u901f"

    const-string v8, "STAGE_NOT_CONTINUOUS_SPEED_TEST"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Lcom/tencent/mna/j$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/tencent/mna/j$c;->STAGE_NOT_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

    const/4 v6, 0x4

    .line 5
    new-array v6, v6, [Lcom/tencent/mna/j$c;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/tencent/mna/j$c;->a:[Lcom/tencent/mna/j$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lcom/tencent/mna/j$c;->flag:I

    .line 7
    iput-object p4, p0, Lcom/tencent/mna/j$c;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/j$c;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mna/j$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mna/j$c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mna/j$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/j$c;->a:[Lcom/tencent/mna/j$c;

    invoke-virtual {v0}, [Lcom/tencent/mna/j$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/j$c;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j$c;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/j$c;->flag:I

    return v0
.end method

.method public isInPvp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/j$c;->STAGE_FORWARD_CHOSEN:Lcom/tencent/mna/j$c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/mna/j$c;->STAGE_DIRECT_CHOSEN:Lcom/tencent/mna/j$c;

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
