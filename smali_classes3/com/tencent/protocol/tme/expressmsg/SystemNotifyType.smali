.class public final enum Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

.field public static final enum BUSINESS_TYPE_BASE:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

.field public static final enum BUSINESS_TYPE_REAUTH_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

.field public static final enum BUSINESS_TYPE_RELOGIN_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

.field public static final enum BUSINESS_TYPE_ROOM_USER_NUM_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    const-string v1, "BUSINESS_TYPE_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_BASE:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    new-instance v1, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    const/16 v3, 0x7d0

    const-string v4, "BUSINESS_TYPE_REAUTH_NOTIFY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_REAUTH_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    new-instance v3, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    const/16 v4, 0x7d1

    const-string v6, "BUSINESS_TYPE_RELOGIN_NOTIFY"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_RELOGIN_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    new-instance v4, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    const/16 v6, 0x7d2

    const-string v8, "BUSINESS_TYPE_ROOM_USER_NUM_NOTIFY"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->BUSINESS_TYPE_ROOM_USER_NUM_NOTIFY:Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->$VALUES:[Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->$VALUES:[Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/expressmsg/SystemNotifyType;->value:I

    return v0
.end method
