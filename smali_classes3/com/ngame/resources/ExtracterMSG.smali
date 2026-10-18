.class final enum Lcom/ngame/resources/ExtracterMSG;
.super Ljava/lang/Enum;
.source "ResourceDecompressActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ngame/resources/ExtracterMSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ngame/resources/ExtracterMSG;

.field public static final enum START_EXTRACT:Lcom/ngame/resources/ExtracterMSG;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/ngame/resources/ExtracterMSG;

    const-string v1, "START_EXTRACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ngame/resources/ExtracterMSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ngame/resources/ExtracterMSG;->START_EXTRACT:Lcom/ngame/resources/ExtracterMSG;

    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Lcom/ngame/resources/ExtracterMSG;

    aput-object v0, v1, v2

    sput-object v1, Lcom/ngame/resources/ExtracterMSG;->$VALUES:[Lcom/ngame/resources/ExtracterMSG;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ngame/resources/ExtracterMSG;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/ngame/resources/ExtracterMSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ngame/resources/ExtracterMSG;

    return-object p0
.end method

.method public static values()[Lcom/ngame/resources/ExtracterMSG;
    .locals 1

    .line 40
    sget-object v0, Lcom/ngame/resources/ExtracterMSG;->$VALUES:[Lcom/ngame/resources/ExtracterMSG;

    invoke-virtual {v0}, [Lcom/ngame/resources/ExtracterMSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ngame/resources/ExtracterMSG;

    return-object v0
.end method
