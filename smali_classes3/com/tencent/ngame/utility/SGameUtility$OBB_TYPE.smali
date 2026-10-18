.class public final enum Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;
.super Ljava/lang/Enum;
.source "SGameUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SGameUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OBB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

.field public static final enum MAIN:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

.field public static final enum PATCH:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 178
    new-instance v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->MAIN:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    .line 179
    new-instance v1, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    const-string v3, "PATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->PATCH:Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    const/4 v3, 0x2

    .line 177
    new-array v3, v3, [Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->$VALUES:[Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 177
    const-class v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;
    .locals 1

    .line 177
    sget-object v0, Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->$VALUES:[Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    invoke-virtual {v0}, [Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/ngame/utility/SGameUtility$OBB_TYPE;

    return-object v0
.end method
