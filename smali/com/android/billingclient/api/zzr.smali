.class final Lcom/android/billingclient/api/zzr;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzs;

.field private zzb:Z

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzs;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/android/billingclient/api/zzr;->zzc:Z

    return-void
.end method

.method private final zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V
    .locals 2

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {p2}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object p2

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza()Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p3

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzA([BLcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1, p5, p6, p7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {p1}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p3, p2, v1, p4}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2, p5, p6, p7}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x58756162

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x141f9074

    if-eq v2, v3, :cond_1

    const v3, 0x14937179

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_2

    .line 5
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    :goto_2
    move-object v7, v1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 3
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 29
    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 5
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x20

    const/16 v3, 0x20

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v3, 0x2

    .line 6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v9, 0x0

    const-string v10, "BillingBroadcastManager"

    if-nez v2, :cond_a

    const-string v0, "Bundle is null."

    .line 7
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzk:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 8
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 9
    invoke-static {v2, v3, v4, v9, v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 10
    invoke-interface {v0, v4, v9}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_a
    if-ne v3, v4, :cond_f

    .line 11
    sget v4, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    if-nez v0, :cond_b

    const-string v0, "BillingHelper"

    const-string v4, "Got null intent!"

    .line 12
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v4, 0x6

    .line 13
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 14
    invoke-virtual {v0, v6}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    const-string v4, "An internal error occurred."

    .line 15
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_7

    .line 70
    :cond_b
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_c

    const-string v11, "Unexpected null bundle received!"

    .line 19
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v11, 0x0

    goto :goto_6

    .line 28
    :cond_c
    const-string v12, "SUB_RESPONSE_CODE"

    .line 20
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d

    const-string v11, "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 21
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :cond_d
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_e

    .line 23
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_6

    :cond_e
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 24
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Unexpected type for bundle sub response code: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :goto_6
    invoke-virtual {v4, v11}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 28
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    goto :goto_7

    .line 29
    :cond_f
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    :goto_7
    move-object v11, v0

    .line 16
    const-string v0, "billingClientTransactionId"

    const-wide/16 v12, 0x0

    .line 30
    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v0, "wasServiceAutoReconnected"

    .line 31
    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 32
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 33
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_c

    .line 37
    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 39
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/play_billing/zzil;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v11}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v11

    move-object v4, v7

    move-wide v5, v12

    move v7, v14

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/zzr;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v1

    .line 42
    invoke-interface {v0, v11, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_11
    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zza(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzb;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_8

    .line 65
    :cond_12
    const-string v0, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 66
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzay:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 67
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 68
    invoke-static {v2, v3, v4, v9, v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v2

    .line 67
    invoke-interface {v1, v2, v12, v13, v14}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v1

    .line 70
    invoke-interface {v0, v4, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 42
    :cond_13
    :goto_8
    const-string v1, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 43
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    :try_start_0
    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/android/billingclient/api/UserChoiceDetails;

    .line 51
    invoke-direct {v2, v1}, Lcom/android/billingclient/api/UserChoiceDetails;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zze(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v0

    .line 52
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/UserChoiceBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V

    goto :goto_b

    .line 44
    :cond_14
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "products"

    .line 45
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    const/4 v11, 0x0

    .line 47
    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v11, v15, :cond_17

    .line 48
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_16

    new-instance v6, Lcom/android/billingclient/api/zzc;

    .line 49
    invoke-direct {v6, v15, v9}, Lcom/android/billingclient/api/zzc;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzd;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_9

    .line 46
    :cond_17
    :goto_a
    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zza(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzb;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lcom/android/billingclient/api/zzb;->zza()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_b
    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 59
    invoke-static {v3, v7}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1, v12, v13, v14}, Lcom/android/billingclient/api/zzch;->zzh(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    return-void

    .line 2
    :catch_0
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Error when parsing invalid user choice data: [%s]"

    .line 53
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 55
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 56
    invoke-static {v2, v3, v4, v9, v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v2

    .line 55
    invoke-interface {v1, v2, v12, v13, v14}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v1

    .line 58
    invoke-interface {v0, v4, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 49
    :cond_18
    const-string v1, "Couldn\'t find alternative billing user choice data in bundle."

    .line 61
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzp:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 62
    sget-object v4, Lcom/android/billingclient/api/zzcj;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 63
    invoke-static {v2, v3, v4, v9, v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v2

    .line 62
    invoke-interface {v1, v2, v12, v13, v14}, Lcom/android/billingclient/api/zzch;->zzd(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v1

    .line 65
    invoke-interface {v0, v4, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_19
    return-void

    .line 34
    :cond_1a
    :goto_c
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzl(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v11}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzb(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 35
    invoke-static {v3, v7}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    .line 36
    invoke-interface {v0, v1, v12, v13, v14}, Lcom/android/billingclient/api/zzch;->zzh(Lcom/google/android/gms/internal/play_billing/zzib;JZ)V

    goto :goto_d

    :cond_1b
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v11

    move-object v4, v7

    move-wide v5, v12

    move v7, v14

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/zzr;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzil;JZ)V

    .line 36
    :goto_d
    iget-object v0, v8, Lcom/android/billingclient/api/zzr;->zza:Lcom/android/billingclient/api/zzs;

    invoke-static {v0}, Lcom/android/billingclient/api/zzs;->zzc(Lcom/android/billingclient/api/zzs;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    .line 38
    invoke-interface {v0, v11, v9}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzc:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, p0, p2, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p3, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-lt p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/android/billingclient/api/zzr;->zzc:Z

    if-eq v6, p3, :cond_1

    const/4 p3, 0x4

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    const/4 v5, 0x2

    :goto_0
    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p0, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1
    :goto_1
    iput-boolean v6, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzr;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzr;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
