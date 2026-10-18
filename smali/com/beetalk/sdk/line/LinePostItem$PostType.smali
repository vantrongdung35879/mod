.class public final enum Lcom/beetalk/sdk/line/LinePostItem$PostType;
.super Ljava/lang/Enum;
.source "LinePostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/line/LinePostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/line/LinePostItem$PostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 3

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lcom/beetalk/sdk/line/LinePostItem$PostType;

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    .line 11
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v1, "TEXT_LINK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    .line 12
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    .line 9
    invoke-static {}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->$values()[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->$VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 1

    .line 9
    sget-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->$VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/line/LinePostItem$PostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-object v0
.end method
