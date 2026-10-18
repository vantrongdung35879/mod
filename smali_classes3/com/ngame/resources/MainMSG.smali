.class final enum Lcom/ngame/resources/MainMSG;
.super Ljava/lang/Enum;
.source "ResourceDecompressActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ngame/resources/MainMSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_ERROR:Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_FINISH:Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_MD5_ERROR:Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_PROGRESS:Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_START:Lcom/ngame/resources/MainMSG;

.field public static final enum EXTRACT_TOTAL_SIZE:Lcom/ngame/resources/MainMSG;

.field public static final enum SPLASH_TIMEOUT_WITHOUT_EXTRACT:Lcom/ngame/resources/MainMSG;

.field public static final enum SPLASH_TIMEOUT_WITH_EXTRACT:Lcom/ngame/resources/MainMSG;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/ngame/resources/MainMSG;

    const-string v1, "EXTRACT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ngame/resources/MainMSG;->EXTRACT_START:Lcom/ngame/resources/MainMSG;

    .line 31
    new-instance v1, Lcom/ngame/resources/MainMSG;

    const-string v3, "EXTRACT_TOTAL_SIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_TOTAL_SIZE:Lcom/ngame/resources/MainMSG;

    .line 32
    new-instance v3, Lcom/ngame/resources/MainMSG;

    const-string v5, "EXTRACT_PROGRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ngame/resources/MainMSG;->EXTRACT_PROGRESS:Lcom/ngame/resources/MainMSG;

    .line 33
    new-instance v5, Lcom/ngame/resources/MainMSG;

    const-string v7, "EXTRACT_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ngame/resources/MainMSG;->EXTRACT_ERROR:Lcom/ngame/resources/MainMSG;

    .line 34
    new-instance v7, Lcom/ngame/resources/MainMSG;

    const-string v9, "EXTRACT_MD5_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ngame/resources/MainMSG;->EXTRACT_MD5_ERROR:Lcom/ngame/resources/MainMSG;

    .line 35
    new-instance v9, Lcom/ngame/resources/MainMSG;

    const-string v11, "EXTRACT_FINISH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ngame/resources/MainMSG;->EXTRACT_FINISH:Lcom/ngame/resources/MainMSG;

    .line 36
    new-instance v11, Lcom/ngame/resources/MainMSG;

    const-string v13, "SPLASH_TIMEOUT_WITH_EXTRACT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ngame/resources/MainMSG;->SPLASH_TIMEOUT_WITH_EXTRACT:Lcom/ngame/resources/MainMSG;

    .line 37
    new-instance v13, Lcom/ngame/resources/MainMSG;

    const-string v15, "SPLASH_TIMEOUT_WITHOUT_EXTRACT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ngame/resources/MainMSG;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ngame/resources/MainMSG;->SPLASH_TIMEOUT_WITHOUT_EXTRACT:Lcom/ngame/resources/MainMSG;

    const/16 v15, 0x8

    .line 28
    new-array v15, v15, [Lcom/ngame/resources/MainMSG;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/ngame/resources/MainMSG;->$VALUES:[Lcom/ngame/resources/MainMSG;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ngame/resources/MainMSG;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/ngame/resources/MainMSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ngame/resources/MainMSG;

    return-object p0
.end method

.method public static values()[Lcom/ngame/resources/MainMSG;
    .locals 1

    .line 28
    sget-object v0, Lcom/ngame/resources/MainMSG;->$VALUES:[Lcom/ngame/resources/MainMSG;

    invoke-virtual {v0}, [Lcom/ngame/resources/MainMSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ngame/resources/MainMSG;

    return-object v0
.end method
