.class public final enum Lcom/ihoc/mgpa/deviceid/IDType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/deviceid/IDType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/deviceid/IDType;

.field public static final enum AAID:Lcom/ihoc/mgpa/deviceid/IDType;

.field public static final enum OAID:Lcom/ihoc/mgpa/deviceid/IDType;

.field public static final enum UDID:Lcom/ihoc/mgpa/deviceid/IDType;

.field public static final enum UNKOWN:Lcom/ihoc/mgpa/deviceid/IDType;

.field public static final enum VAID:Lcom/ihoc/mgpa/deviceid/IDType;


# instance fields
.field private idType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ihoc/mgpa/deviceid/IDType;

    const-string v1, "UNKOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/mgpa/deviceid/IDType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/deviceid/IDType;->UNKOWN:Lcom/ihoc/mgpa/deviceid/IDType;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/IDType;

    const-string v3, "UDID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/ihoc/mgpa/deviceid/IDType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ihoc/mgpa/deviceid/IDType;->UDID:Lcom/ihoc/mgpa/deviceid/IDType;

    new-instance v3, Lcom/ihoc/mgpa/deviceid/IDType;

    const-string v5, "OAID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/ihoc/mgpa/deviceid/IDType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ihoc/mgpa/deviceid/IDType;->OAID:Lcom/ihoc/mgpa/deviceid/IDType;

    new-instance v5, Lcom/ihoc/mgpa/deviceid/IDType;

    const-string v7, "VAID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/ihoc/mgpa/deviceid/IDType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ihoc/mgpa/deviceid/IDType;->VAID:Lcom/ihoc/mgpa/deviceid/IDType;

    new-instance v7, Lcom/ihoc/mgpa/deviceid/IDType;

    const-string v9, "AAID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/ihoc/mgpa/deviceid/IDType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ihoc/mgpa/deviceid/IDType;->AAID:Lcom/ihoc/mgpa/deviceid/IDType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ihoc/mgpa/deviceid/IDType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ihoc/mgpa/deviceid/IDType;->$VALUES:[Lcom/ihoc/mgpa/deviceid/IDType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/deviceid/IDType;->idType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/deviceid/IDType;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/deviceid/IDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/deviceid/IDType;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/deviceid/IDType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/deviceid/IDType;->$VALUES:[Lcom/ihoc/mgpa/deviceid/IDType;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/deviceid/IDType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/deviceid/IDType;

    return-object v0
.end method


# virtual methods
.method public getIdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/IDType;->idType:Ljava/lang/String;

    return-object v0
.end method
