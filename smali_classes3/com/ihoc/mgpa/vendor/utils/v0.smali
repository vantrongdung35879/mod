.class public final Lcom/ihoc/mgpa/vendor/utils/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/x0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/v0;->a:Lcom/ihoc/mgpa/vendor/utils/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThermalControlChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/v0;->a:Lcom/ihoc/mgpa/vendor/utils/x0;

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    return-void
.end method
