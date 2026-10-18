.class public final Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0019\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;",
        "",
        "type",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "action",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityAction;",
        "(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;)V",
        "getAction",
        "()Lcom/ihoc/mgpa/superframe/VendorAbilityAction;",
        "isSupported",
        "",
        "()I",
        "setSupported",
        "(I)V",
        "param",
        "",
        "getParam",
        "()Ljava/lang/String;",
        "setParam",
        "(Ljava/lang/String;)V",
        "switchState",
        "getSwitchState",
        "setSwitchState",
        "getType",
        "()Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "toJson",
        "kgvmp_internationalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final action:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

.field private isSupported:I

.field private param:Ljava/lang/String;

.field private switchState:I

.field private final type:Lcom/ihoc/mgpa/superframe/VendorAbilityType;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->type:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    iput-object p2, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->action:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->isSupported:I

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->OFF:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    iput p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->switchState:I

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->param:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 5
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->UNKNOWN:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;-><init>(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;)V

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/ihoc/mgpa/superframe/VendorAbilityAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->action:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

    return-object v0
.end method

.method public final getParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->param:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwitchState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->switchState:I

    return v0
.end method

.method public final getType()Lcom/ihoc/mgpa/superframe/VendorAbilityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->type:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    return-object v0
.end method

.method public final isSupported()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->isSupported:I

    return v0
.end method

.method public final setParam(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->param:Ljava/lang/String;

    return-void
.end method

.method public final setSupported(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->isSupported:I

    return-void
.end method

.method public final setSwitchState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->switchState:I

    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->type:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->action:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/VendorAbilityAction;->getAction()I

    move-result v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget v1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->isSupported:I

    const-string v2, "isSupported"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget v1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->switchState:I

    const-string/jumbo v2, "switchState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->param:Ljava/lang/String;

    const-string v2, "param"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject().apply {\n   \u2026ram)\n        }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
