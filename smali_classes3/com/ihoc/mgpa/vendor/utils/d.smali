.class public final enum Lcom/ihoc/mgpa/vendor/utils/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/utils/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/ihoc/mgpa/vendor/utils/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/ihoc/mgpa/vendor/GameKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/d;

    sget-object v1, Lcom/ihoc/mgpa/vendor/GameKey;->SCENE:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v2, "sceneId"

    const-string v3, "SCENEID"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/ihoc/mgpa/vendor/utils/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/d;

    sget-object v2, Lcom/ihoc/mgpa/vendor/GameKey;->FPS:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string v3, "fps"

    const-string v5, "FPS"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v2}, Lcom/ihoc/mgpa/vendor/utils/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    new-instance v2, Lcom/ihoc/mgpa/vendor/utils/d;

    sget-object v3, Lcom/ihoc/mgpa/vendor/GameKey;->THREAD_TID:Lcom/ihoc/mgpa/vendor/GameKey;

    const-string/jumbo v5, "tid"

    const-string v7, "THREADTID"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/ihoc/mgpa/vendor/utils/d;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/ihoc/mgpa/vendor/utils/d;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v8

    sput-object v3, Lcom/ihoc/mgpa/vendor/utils/d;->c:[Lcom/ihoc/mgpa/vendor/utils/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ihoc/mgpa/vendor/GameKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ihoc/mgpa/vendor/GameKey;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/vendor/utils/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/ihoc/mgpa/vendor/utils/d;->b:Lcom/ihoc/mgpa/vendor/GameKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/utils/d;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/utils/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/utils/d;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/utils/d;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/d;->c:[Lcom/ihoc/mgpa/vendor/utils/d;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/utils/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/utils/d;

    return-object v0
.end method
