.class public final Lcom/ihoc/mgpa/function/BiLinkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\n\u001a\u00020\u0008H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/ihoc/mgpa/function/BiLinkHelper;",
        "",
        "()V",
        "getConfig",
        "Lorg/json/JSONObject;",
        "getDualWifiState",
        "",
        "isFuncOpen",
        "",
        "isTurboRxEnable",
        "isWirelessDisplaying",
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


# static fields
.field public static final INSTANCE:Lcom/ihoc/mgpa/function/BiLinkHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ihoc/mgpa/function/BiLinkHelper;

    invoke-direct {v0}, Lcom/ihoc/mgpa/function/BiLinkHelper;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/function/BiLinkHelper;->INSTANCE:Lcom/ihoc/mgpa/function/BiLinkHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConfig()Lorg/json/JSONObject;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getConfigObj()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getDualWifiState()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/c0;->e()I

    move-result v0

    return v0
.end method

.method public static final isFuncOpen()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->m0:Z

    return v0
.end method

.method public static final isTurboRxEnable()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->n0:Z

    return v0
.end method

.method public static final isWirelessDisplaying()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/c0;->g()Z

    move-result v0

    return v0
.end method
